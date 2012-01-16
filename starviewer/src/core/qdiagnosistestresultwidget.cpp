#include "qdiagnosistestresultwidget.h"

#include <QMouseEvent>

#include "diagnosistestresult.h"
#include "diagnosistest.h"

namespace udg {

QDiagnosisTestResultWidget::QDiagnosisTestResultWidget(DiagnosisTest *diagnosisTest, DiagnosisTestResult diagnosisTestResult)
 : m_initialResultDescriptionHorizontalSpacerWidth(13), m_initialResultSolutionHorizontalSpacerWidth(13)
{
    setupUi(this);

    m_diagnosisTestDescription->setText(diagnosisTest->getDescription());
    m_diagnosisTestResultDescription->setText(QString("<b>Description: </b> %1").arg(diagnosisTestResult.getDescription().replace('\n',"<br>")));
    m_diagnosisTestResultSolution->setText(QString("<b>Solution: </b> %1").arg( diagnosisTestResult.getSolution().replace('\n',"<br>")));

    m_diagnosisTestResultDescriptionLineCounter->setText(m_diagnosisTestResultDescription->text());
    m_diagnosisTestResultSolutionLineCounter->setText(m_diagnosisTestResultSolution->text());

    m_iconDiagnosticResultLabel->setPixmap(getIconLabel(diagnosisTestResult));
    
    m_isExpandable = diagnosisTestResult.getState() != DiagnosisTestResult::Ok;
    m_expandContractLabel->setVisible(m_isExpandable);

    if (m_isExpandable)
    {
        m_testDescriptionFrame->setCursor(QCursor(Qt::PointingHandCursor));
    }

    m_isExpanded = false;
    m_descriptionSolutionDiagnosisTestFrame->setVisible(false);

    // Els QTextEdit tenen un marge intern de 4px, per tant el treguem
    m_diagnosisTestResultDescriptionLineCounter->setStyleSheet("margin: -4px");
    m_diagnosisTestResultSolutionLineCounter->setStyleSheet("margin: -4px");
}

void QDiagnosisTestResultWidget::expand()
{
    if (m_isExpandable)
    {
        m_descriptionSolutionDiagnosisTestFrame->setVisible(true);
        m_expandContractLabel->setPixmap(QPixmap(":/images/collapse.png"));
        
        // Posar els QTextEdit a visible per poder contar les línies de text.
        m_diagnosisTestResultDescriptionLineCounter->setVisible(true);
        m_diagnosisTestResultSolutionLineCounter->setVisible(true);

        // Redimencionar-los correctament.
        // Primer de tot cal mirar la posició X dels QTextEdit respecte el pare, ja que sabem la llargada del pare, no la seva.
        QPoint position = m_diagnosisTestResultDescriptionLineCounter->mapTo(this, QPoint(0, 0));
        int descriptionSpacerWidth = m_resultDescriptionHorizontalSpacer->geometry().width();
        int solutionSpacerWidth = m_resultSolutionHorizontalSpacer->geometry().width();

        int resultDescriptionWidth = m_parentWidgetWidth - position.x() - descriptionSpacerWidth;
        int resultSolutionWidth = m_parentWidgetWidth - position.x() - solutionSpacerWidth;

        m_diagnosisTestResultDescriptionLineCounter->setGeometry(0, 0, resultDescriptionWidth, 0);
        m_diagnosisTestResultSolutionLineCounter->setGeometry(0, 0, resultSolutionWidth, 0);

        // Comptar les línies de text que ocuparà el QLabel.
        m_diagnosisTestResultDescriptionLines = countNumberOfLinesWithWordWrap(m_diagnosisTestResultDescriptionLineCounter);
        m_diagnosisTestResultSolutionLines = countNumberOfLinesWithWordWrap(m_diagnosisTestResultSolutionLineCounter);
        
        // Tornar a amagar els QTextEdit.
        m_diagnosisTestResultDescriptionLineCounter->setVisible(false);
        m_diagnosisTestResultSolutionLineCounter->setVisible(false);
        
        // Finalment, ajustar al tamany correcte
        this->adjustSize();

        m_isExpanded = true;
    }
}

bool QDiagnosisTestResultWidget::isExpandable()
{
    return m_isExpandable;
}

void QDiagnosisTestResultWidget::setParentWidgetWidth(int parentWidgetWidth)
{
    m_parentWidgetWidth = parentWidgetWidth;
}

void QDiagnosisTestResultWidget::setParentWidgetVerticalScrollWidth(int verticalScrollWidth)
{
    // Descripció: La nova mida serà la inicial, més la de la barra de scroll.
    int newWidth = m_initialResultDescriptionHorizontalSpacerWidth + verticalScrollWidth;
    int currentWidth = m_resultDescriptionHorizontalSpacer->geometry().width();
    if (currentWidth != newWidth)
    {
        m_resultDescriptionHorizontalSpacer->changeSize(newWidth, 0, QSizePolicy::Fixed, QSizePolicy::Maximum);
    }

    // Solució
    newWidth = m_initialResultSolutionHorizontalSpacerWidth + verticalScrollWidth;
    currentWidth = m_resultSolutionHorizontalSpacer->geometry().width();
    if (currentWidth != newWidth)
    {
        m_resultSolutionHorizontalSpacer->changeSize(newWidth, 0, QSizePolicy::Fixed, QSizePolicy::Maximum);
    }
}

int QDiagnosisTestResultWidget::getTestDescriptionWidthHint()
{
    int widthHint = 0;
    if (!m_expandContractLabel->isVisible())
    {
        // Si la fletxeta per expendir o contraure no hi és mesurem el que ocupa la descripció.
        QFontMetrics fontMetrics = m_diagnosisTestDescription->fontMetrics();
        QPoint position = m_diagnosisTestDescription->mapTo(this, QPoint(0, 0));
        widthHint = position.x() + fontMetrics.width(m_diagnosisTestDescription->text());
    }
    else
    {
        // Si hi és, agafem com a mída allà on acaba.
        QPoint position = m_expandContractLabel->mapTo(this, QPoint(m_expandContractLabel->width(), 0));
        widthHint = position.x();
    }
    return widthHint;
}

void QDiagnosisTestResultWidget::contract()
{
    m_descriptionSolutionDiagnosisTestFrame->setVisible(false);
    m_expandContractLabel->setPixmap(QPixmap(":/images/expand.png"));

    this->resize(m_diagnosisTestDescription->size());

    m_isExpanded = false;
}

void QDiagnosisTestResultWidget::mouseReleaseEvent(QMouseEvent * event)
{
    emit(clicked(this));
    event->accept();
}

QSize QDiagnosisTestResultWidget::sizeHint() const
{
    if (m_isExpanded)
    {
        /// La mida del widget es calcula de forma manual, qualsevol canvi en el UI requereix modificar aquest mètode
        int descriptionFontHeight = m_diagnosisTestResultDescription->fontMetrics().height();
        int solutionFontHeight = m_diagnosisTestResultSolution->fontMetrics().height();
        
        // L'alçada es composa de les tres parts del widget, el títol, la descripció i la línia horitzontal.
        int testDescriptionFrameHeight = m_testDescriptionFrame->sizeHint().height();
        int horizontalLineFrameHeight = horizontalLayout_3->sizeHint().height();
        // Només ens cal calcular la del frame de la descripció i solució del test, la resta la podem obtenir correctament amb el sizeHint.
        int testResultDescriptionFrameHeight = 0;

        // El frame de la descripció i solució del test té marges que cal respectar
        int top, bottom;
        m_descriptionSolutionDiagnosisTestFrame->layout()->getContentsMargins(NULL, &top, NULL, &bottom);
        int margins = top + bottom;
        // I hem de tenir en compte l'spacing vertical
        int insideVerticalSpacing = gridLayout_2->verticalSpacing();

        // Nombre de vertical spacings que hi ha entre widgets:
        // tenim descriptionLinieCounter, SPACING, description, SPACING, solutionLinieCounter, SPACING i solution, per tant 3
        int numberOfSpacings = 3;
        // Finalment fem el càlcul de la mida vertical del widget de la descripció i solució del test
        testResultDescriptionFrameHeight = insideVerticalSpacing * numberOfSpacings +
                                           descriptionFontHeight * m_diagnosisTestResultDescriptionLines +
                                           solutionFontHeight * m_diagnosisTestResultSolutionLines + 
                                           margins;

        // La mida final es calcula sumant les tres mides dels diferents frames
        int thisHeightHint = testDescriptionFrameHeight + testResultDescriptionFrameHeight + horizontalLineFrameHeight;

        // Com a mida horitzontal recomenada, retornem la del widget pare. D'aquesta manera, al fer un resize horitzontal, no fa twitching
        return QSize(m_parentWidgetWidth, thisHeightHint);
    }
    else
    {
        return QWidget::sizeHint();
    }
}

QPixmap QDiagnosisTestResultWidget::getIconLabel(const DiagnosisTestResult &diagnosisTestResult) const
{
    QString iconPath;

    switch (diagnosisTestResult.getState())
    {
        case DiagnosisTestResult::Ok:
            iconPath = ":/images/button_ok.png";
            break;
        case DiagnosisTestResult::Warning:
            iconPath = ":/images/small-warning.png";
            break;
        case DiagnosisTestResult::Error:
        case DiagnosisTestResult::Invalid:
        default:
            iconPath = ":/images/cancel.png";
            break;
    }

    return  QPixmap(iconPath);
}

bool QDiagnosisTestResultWidget::clickIsInAreaTestDescriptionFrame(QMouseEvent *event)
{
    return m_testDescriptionFrame->x() <= event->x() && event->x() <= (m_testDescriptionFrame->x() + m_testDescriptionFrame->width()) &&
        m_testDescriptionFrame->y() <= event->y() && event->y() < (m_testDescriptionFrame->y() + m_testDescriptionFrame->height());
}

int QDiagnosisTestResultWidget::countNumberOfLinesWithWordWrap(QTextEdit *textEdit) const
{
    QTextDocument *text = textEdit->document();
    QTextCursor *cursor = new QTextCursor(text);
    int numberOfLines = 0;

    cursor->movePosition(QTextCursor::Start);
    bool isNotDone = true;
    while(isNotDone)
    {
        isNotDone = cursor->movePosition(QTextCursor::Down);
        numberOfLines++;
    }

    delete cursor;

    return numberOfLines;
}

}