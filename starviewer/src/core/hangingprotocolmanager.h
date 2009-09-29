/***************************************************************************
 *   Copyright (C) 2005-2007 by Grup de Gràfics de Girona                  *
 *   http://iiia.udg.es/GGG/index.html?langu=uk                            *
 *                                                                         *
 *   Universitat de Girona                                                 *
 ***************************************************************************/
#ifndef UDGHANGINGPROTOCOLMANAGER_H
#define UDGHANGINGPROTOCOLMANAGER_H

#include <QObject>
#include <QMap>
#include <QList>

namespace udg {

class ViewersLayout;
class HangingProtocol;
class HangingProtocolImageSet;
class HangingProtocolDisplaySet;
class Patient;
class Series;
class Image;
class Q2DViewerWidget;
class Q2DViewer;

/**
	@author Grup de Gràfics de Girona  ( GGG ) <vismed@ima.udg.es>
*/
class HangingProtocolManager : public QObject {
Q_OBJECT
public:
    HangingProtocolManager( QObject *parent = 0 );
    ~HangingProtocolManager();

    /// Buscar i aplicar el millor hanging protocol
    QList<HangingProtocol * > searchAndApplyBestHangingProtocol( ViewersLayout *layout, Patient *patient);

    // Aplica un hanging protocol concret, ja sigui via identificador o per instància
    void applyHangingProtocol( int hangingProtocolNumber, ViewersLayout * layout );
    void applyHangingProtocol( HangingProtocol *hangingProtocol, ViewersLayout * layout );

    /// TODO Mètode públic temporal per poder aplicar les transformacions desitjades per un viewer
    /// es fa especialment per no haver de fer noves classes ni duplicar el mapa de transformacions
    /// i per poder aplicar-ho ràpidament sobre mamo. S'ha de plantejar bé on hauria d'anar tot això
    /// Donada la orientació actual i la desitjada, aplica sobre el viewer donat les transformacions pertinents
    /// El format de les orientacions és el mateix que el del DICOM, 2 strings separats per "\",
    /// el primer indica la direcció de les rows i el segon la direcció de les columnes
    void applyDesiredDisplayOrientation(const QString &currentOrientation, const QString &desiredOrientation, Q2DViewer *viewer);

private:
    /// Mira si el protocol es pot aplicar al pacient
    bool isValid( HangingProtocol *protocol, Patient *patient);

    // Busca la sèrie corresponent dins un grup de sèries. Si el booleà quitStudy és cert, a més, l'eliminarà del conjunt
    Series *searchSerie( QList<Series *> &seriesList, HangingProtocolImageSet *imageSet, bool quitStudy, HangingProtocol * hangingProtocol );

    /// Cert si la imatge compleix les restriccions
    bool isValidImage( Image *image, HangingProtocolImageSet *imageSet, HangingProtocol * hangingProtocol );

    /// Cert si la sèrie compleix les restriccions de l'imageSet, fals altrament
    bool isValidSerie( Series *serie, HangingProtocolImageSet *imageSet, HangingProtocol * hangingProtocol );

    /// Aplicar les transformacions (rotacions, flips..) per mostrar per pantalla
    void applyDisplayTransformations( Series *serie,  int imageNumber, Q2DViewerWidget *viewer, HangingProtocolDisplaySet *displaySet );

private:
    /// Map per guardar les operacions de rotacio i flip per aplicar a les imatges. Valors: String posicions, nombre de rotacions, nombre flips
    QMap<QString, QString> m_operationsMap;
};

}

#endif
