# Fitxer generat pel gestor de qmake de kdevelop.
# -------------------------------------------
# Subdirectori relatiu al directori principal del projecte: ./src/core
# L'objectiu és una biblioteca:
FORMS += qlogviewerbase.ui \
    qcustomwindowleveldialogbase.ui \
    qtransferfunctioneditorbyvaluesbase.ui \
    qtransferfunctionintervaleditorbase.ui \
    qcinecontrollerbase.ui \
    qthickslabwidgetbase.ui \
    q2dviewerwidgetbase.ui \
    qreleasenotesbase.ui \
    qdicomdumpbrowserbase.ui \
    qviewerworkinprogresswidget.ui \
    qcustomwindowleveleditwidgetbase.ui \
    qtransferfunctioneditor2base.ui \
    qtransferfunctiongraphicalviewbase.ui \
    qdiagnosistestbase.ui \
    qmodalitiesselectorgroupboxbase.ui \
    q2dviewerlayoutconfigurationscreenbase.ui \
    q2dviewerconfigurationscreenbase.ui \
    qlayoutoptionswidgetbase.ui \
    qnotificationpopupbase.ui \
    qfusionlayoutwidgetbase.ui \
    qexternalapplicationconfigurationscreenbase.ui \
    qdpiconfigurationscreenbase.ui


TRANSLATIONS += core_ca_ES.ts \
    core_es_ES.ts \
    core_en_GB.ts
HEADERS += extensionfactory.h \
    genericfactory.h \
    singleton.h \
    genericsingletonfactoryregister.h \
    extensionfactoryregister.h \
    extensionmediator.h \
    displayableid.h \
    extensionmediatorfactory.h \
    extensionmediatorfactoryregister.h \
    installextension.h \
    itkImageToVTKImageFilter.h \
    itkVTKImageToImageFilter.h \
    mathtools.h \
    itkQtAdaptor.h \
    harddiskinformation.h \
    logging.h \
    volume.h \
    volumehelper.h \
    volumereader.h \
    volumepixeldatareader.h \
    volumepixeldatareadervtkgdcm.h \
    volumepixeldatareaderitkgdcm.h \
    volumerepository.h \
    identifier.h \
    repositorybase.h \
    repository.h \
    q2dviewer.h \
    q3dviewer.h \
    qviewer.h \
    patient.h \
    series.h \
    study.h \
    q3dorientationmarker.h \
    zoomtool.h \
    qlogviewer.h \
    strokesegmentationmethod.h \
    itkErfcLevelSetFunction.h \
    itkErfcLevelSetImageFilter.h \
    itkVolumeCalculatorImageFilter.h \
    vtkImageMapToWindowLevelColors3.h \
    displayshutter.h \
    image.h \
    imageoverlay.h \
    imageoverlayreader.h \
    dicomtagreader.h \
    patientfiller.h \
    patientfillerstep.h \
    patientfillerinput.h \
    dicomfileclassifierfillerstep.h \
    imagefillerstep.h \
    presentationstatefillerstep.h \
    extensioncontext.h \
    keyimagenotefillerstep.h \
    temporaldimensionfillerstep.h \
    createinformationmodelobject.h \
    patientbrowsermenu.h \
    patientbrowsermenubasicitem.h \
    patientbrowsermenuextendeditem.h \
    patientbrowsermenuextendedinfo.h \
    patientbrowsermenulist.h \
    qcustomwindowleveldialog.h \
    mhdfileclassifierstep.h \
    orderimagesfillerstep.h \
    toolregistry.h \
    toolmanager.h \
    toolconfiguration.h \
    tool.h \
    toolproxy.h \
    tooldata.h \
    measurementtool.h \
    genericdistancetool.h \
    referencelinestool.h \
    referencelinestooldata.h \
    imageplane.h \
    slicingtool.h \
    translatetool.h \
    translatelefttool.h \
    voxelinformationtool.h \
    windowleveltool.h \
    seedtool.h \
    magicroitool.h \
    rotate3dtool.h \
    screenshottool.h \
    synchronizetool.h \
    synchronizetooldata.h \
    transdifferencetool.h \
    transdifferencetooldata.h \
    point3d.h \
    line3d.h \
    drawer.h \
    drawerprimitive.h \
    drawerpolygon.h \
    drawerline.h \
    drawertext.h \
    drawerpolyline.h \
    drawerbitmap.h \
    polylineroitool.h \
    ellipticalroitool.h \
    polylinetemporalroitool.h \
    polylinetemporalroitooldata.h \
    distancetool.h \
    editortool.h \
    editortooldata.h \
    qviewercinecontroller.h \
    qcinecontroller.h \
    hoverpoints.h \
    qcolorspinbox.h \
    qtransferfunctioneditorbyvalues.h \
    qtransferfunctionintervaleditor.h \
    shadewidget.h \
    transferfunction.h \
    transferfunctionio.h \
    qtransferfunctioneditor.h \
    qtransferfunctioneditorbygradient.h \
    vtkRunThroughFilter.h \
    slicingkeyboardtool.h \
    qthickslabwidget.h \
    erasertool.h \
    drawerpoint.h \
    seedtooldata.h \
    cursor3dtool.h \
    cursor3dtooldata.h \
    angletool.h \
    drawercrosshair.h \
    starviewerapplication.h \
    viewerslayout.h \
    q2dviewerwidget.h \
    q2dviewerannotationhandler.h \
    annotationflags.h \
    hangingprotocol.h \
    hangingprotocollayout.h \
    hangingprotocolsloader.h \
    hangingprotocolsrepository.h \
    hangingprotocolmanager.h \
    hangingprotocolmask.h \
    hangingprotocolimageset.h \
    hangingprotocoldisplayset.h \
    hangingprotocolxmlreader.h \
    ambientvoxelshader.h \
    contourvoxelshader.h \
    directilluminationvoxelshader.h \
    voxelshader.h \
    hdrcolor.h \
    trilinearinterpolator.h \
    vector3.h \
    vtkVolumeRayCastVoxelShaderCompositeFunction.h \
    sphereuniformpointcloudgenerator.h \
    obscurancemainthread.h \
    obscurancethread.h \
    obscurancevoxelshader.h \
    vtk4dlinearregressiongradientestimator.h \
    combiningvoxelshader.h \
    vtkVolumeRayCastSingleVoxelShaderCompositeFunction.h \
    obscurance.h \
    viewpointgenerator.h \
    thumbnailcreator.h \
    nonclosedangletool.h \
    abortrendercommand.h \
    roitool.h \
    roidata.h \
    abstractroidataprinter.h \
    roidataprinter.h \
    petroidataprinter.h \
    petctfusionroidataprinter.h \
    formula.h \
    leanbodymassformula.h \
    bodysurfaceareaformula.h \
    decaycorrectionfactorformula.h \
    standardizeduptakevalueformula.h \
    formulacalculator.h \
    leanbodymassformulacalculator.h \
    bodysurfaceareaformulacalculator.h \
    decaycorrectionfactorformulacalculator.h \
    standardizeduptakevalueformulacalculator.h \
    standardizeduptakevaluebodyweightformulacalculator.h \
    standardizeduptakevalueleanbodymassformulacalculator.h \
    standardizeduptakevaluebodysurfaceareaformulacalculator.h \
    standarduptakevaluemeasurehandler.h \
    statswatcher.h \
    clippingplanestool.h \
    settings.h \
    settingsregistry.h \
    settingsparser.h \
    defaultsettings.h \
    coresettings.h \
    settingsaccesslevelfilereader.h \
    shortcuts.h \
    shortcutmanager.h \
    volumebuilder.h \
    volumebuilderfromcaptures.h \
    dicomattribute.h \
    dicomvalueattribute.h \
    dicomsequenceattribute.h \
    dicomsequenceitem.h \
    dicomtag.h \
    dicomwriter.h \
    dicomwriterdcmtk.h \
    dicomfilegenerator.h \
    dicomdictionary.h \
    dicomimagefilegenerator.h \
    dicomvaluerepresentationconverter.h \
    dicomserviceresponsestatus.h \
    imageorientationoperationsmapper.h \
    anatomicalplane.h \
    patientorientation.h \
    imageorientation.h \
    photometricinterpretation.h \
    qreleasenotes.h \
    qdicomdumpbrowser.h \
    applicationversionchecker.h \
    dynamicmatrix.h \
    screenmanager.h \
    screenlayout.h \
    screen.h \
    colortransferfunction.h \
    transferfunctiontemplate.h \
    opacitytransferfunction.h \
    qscreendistribution.h \
    dicomdumpdefaulttags.h \
    dicomdumpdefaulttagsloader.h \
    dicomdumpdefaulttagsreader.h \
    dicomdumpdefaulttagsrepository.h \
    dicomdumpdefaulttagsrestriction.h \
    windowlevel.h \
    customwindowlevelsloader.h \
    customwindowlevelsreader.h \
    customwindowlevelsrepository.h \
    volumereaderjob.h \
    qviewerworkinprogresswidget.h \
    qviewercommand.h \
    applyhangingprotocolqviewercommand.h \
    renderqviewercommand.h \
    volumepixeldata.h \
    voxel.h \
    customwindowlevelswriter.h \
    qcustomwindowleveleditwidget.h \
    applicationstylehelper.h \
    changesliceqviewercommand.h \
    qtransferfunctioneditor2.h \
    transferfunctioneditor.h \
    transferfunctioneditorcommands.h \
    qtransferfunctionview.h \
    qtransferfunctiongraphicalview.h \
    qcolortransferfunctiongraphicalview.h \
    qcolortransferfunctiongraphicalviewnode.h \
    qopacitytransferfunctiongraphicalview.h \
    qopacitytransferfunctiongraphicalviewnode.h \
    qopacitytransferfunctiongraphicalviewline.h \
    machineidentifier.h \
    dicomsource.h \
    pacsdevice.h \
    machineinformation.h \
    diagnosistest.h \
    diagnosistestresult.h \
    applicationupdatechecker.h \
    diagnosistestfactory.h \
    diagnosistestfactoryregister.h \
    slicelocator.h \
    slicehandler.h \
    automaticsynchronizationtool.h \
    automaticsynchronizationtooldata.h \
    firewallaccess.h \
    firewallaccesstest.h \
    slicingwheeltool.h \
    qmessageboxautoclose.h \
    commandlineoption.h \
    applicationversiontest.h \
    imageoverlayregionfinder.h \
    systeminformation.h \
    systemrequeriments.h \
    systemrequerimentstest.h \
    magnifyingglasstool.h \
    qdiagnosistest.h \
    rundiagnosistest.h \
    q2dviewerconfigurationscreen.h \
    q2dviewerlayoutconfigurationscreen.h \
    qlayoutoptionswidget.h \
    qmodalitiesselectorgroupbox.h \
    circletool.h \
    diagnosistestresultwriter.h \
    perpendiculardistancetool.h \
    glutessellator.h \
    qtreewidgetwithseparatorline.h \
    diagnosistestproblem.h \
    directoryutilities.h \
    dicomformattedvaluesconverter.h \
    loggingoutputwindow.h \
    studylayoutconfig.h \
    studylayoutconfigsettingsmanager.h \
    studylayoutconfigsettingsconverter.h \
    studylayoutconfigsloader.h \
    studylayoutmapper.h \
    measurementmanager.h \
    qnotificationpopup.h \
    measurecomputer.h \
    distancemeasurecomputer.h \
    areameasurecomputer.h \
    pixelspacing2d.h \
    pixelspacingschemepropertyselector.h \
    preferredpixelspacingselector.h \
    defaultmeasurementtypeselector.h \
    optimalviewersgridestimator.h \
    vtkimagedatacreator.h \
    itkDCMTKFileReader.h \
    itkDCMTKImageIO.h \
    itkDCMTKImageIOFactory.h \
    volumepixeldatareaderitkdcmtk.h \
    postprocessor.h \
    computezspacingpostprocessor.h \
    pixelspacingamenderpostprocessor.h \
    volumepixeldatareaderfactory.h \
    volumepixeldatareadervtkdcmtk.h \
    vtkdcmtkimagereader.h \
    volumepixeldataiterator.h \
    patientcomparer.h \
    synccriterion.h \
    anatomicalplanesynccriterion.h \
    inputsynccriterion.h \
    modalitysynccriterion.h \
    syncaction.h \
    zoomfactorsyncaction.h \
    pansyncaction.h \
    imageorientationsyncaction.h \
    signaltosyncactionmapper.h \
    zoomfactorsignaltosyncactionmapper.h \
    pansignaltosyncactionmapper.h \
    imageorientationsignaltosyncactionmapper.h \
    signaltosyncactionmapperfactory.h \
    signaltosyncactionmapperfactoryregister.h \
    syncactionmetadata.h \
    syncactionsconfiguration.h \
    syncactionsconfigurationmenu.h \
    syncactionsconfigurationhandler.h \
    syncactionmanager.h \
    viewerslayouttosyncactionmanageradapter.h \
    volumepixeldatareaderselector.h \
    vtkdcmtkbydefaultvolumepixeldatareaderselector.h \
    itkgdcmbydefaultvolumepixeldatareaderselector.h \
    settingsinterface.h \
    orthogonalplane.h \
    filter.h \
    filteroutput.h \
    windowlevelfilter.h \
    blendfilter.h \
    mammographyimagehelper.h \
    imagepipeline.h \
    volumereadermanager.h \
    volumedisplayunit.h \
    volumedisplayunithandlerfactory.h \
    genericvolumedisplayunithandler.h \
    singlevolumedisplayunithandler.h \
    pairedvolumedisplayunithandler.h \
    petctvolumedisplayunithandler.h \
    petvolumedisplayunithandler.h \
    transferfunctionmodel.h \
    transferfunctionmodelfiller.h \
    defaulttransferfunctionselector.h \
    patientbrowsermenugroup.h \
    patientbrowsermenufusionitem.h \
    phasesyncaction.h \
    phasesignaltosyncactionmapper.h \
    thickslabsyncaction.h \
    thickslabsignaltosyncactionmapper.h \
    qenhancedmenutoolbutton.h \
    qfusionbalancewidget.h \
    frameofreferencesynccriterion.h \
    anglebetweenplanessynccriterion.h \
    anatomicalregionsynccriterion.h \
    singlesliceorvolumetricsynccriterion.h \
    nmvolumedisplayunithandler.h \
    nmctvolumedisplayunithandler.h \
    nmroidataprinter.h \
    nmctfusionroidataprinter.h \
    vtkcorrectimageblend.h \
    vtktextactorwithbackground.h \
    volumereaderjobfactory.h \
    relativegeometrylayout.h \
    griditerator.h \
    voilut.h \
    voilutpresetstooldata.h \
    qvoilutcombobox.h \
    voiluthelper.h \
    voilutpresetstool.h \
    voilutsyncaction.h \
    voilutsignaltosyncactionmapper.h \
    hangingprotocolimagesetrestriction.h \
    hangingprotocolimagesetrestrictionexpression.h \
    hangingprotocolfiller.h \
    qfusionlayoutwidget.h \
    gridicon.h \
    itemmenu.h \
    easylogging++.h \
    volumefillerstep.h \
    qexternalapplicationconfigurationscreen.h \
    externalapplication.h \
    externalapplicationsmanager.h \
    encapsulateddocument.h \
    encapsulateddocumentfillerstep.h \
    qdpiconfigurationscreen.h \
    vtkimageextractphase.h \
    phasefilter.h \
    vtkimagereslicemapper2.h \
    sliceorientedvolumepixeldata.h \
    voxelindex.h

SOURCES += extensionmediator.cpp \
    displayableid.cpp \
    mathtools.cpp \
    harddiskinformation.cpp \
    logging.cpp \
    volume.cpp \
    volumehelper.cpp \
    volumereader.cpp \
    volumepixeldatareader.cpp \
    volumepixeldatareadervtkgdcm.cpp \
    volumepixeldatareaderitkgdcm.cpp \
    volumerepository.cpp \
    identifier.cpp \
    repositorybase.cpp \
    repository.cpp \
    q2dviewer.cpp \
    q3dviewer.cpp \
    qviewer.cpp \
    patient.cpp \
    series.cpp \
    study.cpp \
    q3dorientationmarker.cpp \
    zoomtool.cpp \
    editortool.cpp \
    editortooldata.cpp \
    qlogviewer.cpp \
    strokesegmentationmethod.cpp \
    itkErfcLevelSetFunction.cpp \
    itkErfcLevelSetImageFilter.cpp \
    itkVolumeCalculatorImageFilter.cpp \
    vtkImageMapToWindowLevelColors3.cxx \
    displayshutter.cpp \
    image.cpp \
    imageoverlay.cpp \
    imageoverlayreader.cpp \
    dicomtagreader.cpp \
    patientfiller.cpp \
    patientfillerstep.cpp \
    patientfillerinput.cpp \
    dicomfileclassifierfillerstep.cpp \
    imagefillerstep.cpp \
    presentationstatefillerstep.cpp \
    extensioncontext.cpp \
    keyimagenotefillerstep.cpp \
    temporaldimensionfillerstep.cpp \
    createinformationmodelobject.cpp \
    patientbrowsermenu.cpp \
    patientbrowsermenubasicitem.cpp \
    patientbrowsermenuextendeditem.cpp \
    patientbrowsermenuextendedinfo.cpp \
    patientbrowsermenulist.cpp \
    qcustomwindowleveldialog.cpp \
    mhdfileclassifierstep.cpp \
    orderimagesfillerstep.cpp \
    toolregistry.cpp \
    toolmanager.cpp \
    toolconfiguration.cpp \
    tool.cpp \
    toolproxy.cpp \
    tooldata.cpp \
    measurementtool.cpp \
    genericdistancetool.cpp \
    referencelinestool.cpp \
    referencelinestooldata.cpp \
    imageplane.cpp \
    translatetool.cpp \
    translatelefttool.cpp \
    slicingtool.cpp \
    voxelinformationtool.cpp \
    windowleveltool.cpp \
    seedtool.cpp \
    magicroitool.cpp \
    rotate3dtool.cpp \
    screenshottool.cpp \
    synchronizetool.cpp \
    synchronizetooldata.cpp \
    transdifferencetool.cpp \
    transdifferencetooldata.cpp \
    point3d.cpp \
    line3d.cpp \
    drawer.cpp \
    drawerprimitive.cpp \
    drawerpolygon.cpp \
    drawerline.cpp \
    drawertext.cpp \
    drawerpolyline.cpp \
    drawerbitmap.cpp \
    polylineroitool.cpp \
    ellipticalroitool.cpp \
    polylinetemporalroitool.cpp \
    polylinetemporalroitooldata.cpp \
    distancetool.cpp \
    qviewercinecontroller.cpp \
    qcinecontroller.cpp \
    hoverpoints.cpp \
    qcolorspinbox.cpp \
    qtransferfunctioneditorbyvalues.cpp \
    qtransferfunctionintervaleditor.cpp \
    shadewidget.cpp \
    transferfunction.cpp \
    transferfunctionio.cpp \
    qtransferfunctioneditor.cpp \
    qtransferfunctioneditorbygradient.cpp \
    vtkRunThroughFilter.cxx \
    slicingkeyboardtool.cpp \
    qthickslabwidget.cpp \
    erasertool.cpp \
    drawerpoint.cpp \
    seedtooldata.cpp \
    cursor3dtool.cpp \
    cursor3dtooldata.cpp \
    angletool.cpp \
    drawercrosshair.cpp \
    viewerslayout.cpp \
    q2dviewerwidget.cpp \
    q2dviewerannotationhandler.cpp \
    hangingprotocol.cpp \
    hangingprotocollayout.cpp \
    hangingprotocolsloader.cpp \
    hangingprotocolsrepository.cpp \
    hangingprotocolmanager.cpp \
    hangingprotocolmask.cpp \
    hangingprotocolimageset.cpp \
    hangingprotocoldisplayset.cpp \
    hangingprotocolxmlreader.cpp \
    ambientvoxelshader.cpp \
    contourvoxelshader.cpp \
    directilluminationvoxelshader.cpp \
    voxelshader.cpp \
    trilinearinterpolator.cpp \
    vtkVolumeRayCastVoxelShaderCompositeFunction.cxx \
    sphereuniformpointcloudgenerator.cpp \
    obscurancemainthread.cpp \
    obscurancethread.cpp \
    obscurancevoxelshader.cpp \
    vtk4dlinearregressiongradientestimator.cpp \
    combiningvoxelshader.cpp \
    vtkVolumeRayCastSingleVoxelShaderCompositeFunction.cxx \
    obscurance.cpp \
    viewpointgenerator.cpp \
    thumbnailcreator.cpp \
    nonclosedangletool.cpp \
    abortrendercommand.cpp \
    roitool.cpp \
    roidata.cpp \
    abstractroidataprinter.cpp \
    roidataprinter.cpp \
    petroidataprinter.cpp \
    petctfusionroidataprinter.cpp \
    formula.cpp \
    leanbodymassformula.cpp \
    bodysurfaceareaformula.cpp \
    decaycorrectionfactorformula.cpp \
    standardizeduptakevalueformula.cpp \
    formulacalculator.cpp \
    leanbodymassformulacalculator.cpp \
    bodysurfaceareaformulacalculator.cpp \
    decaycorrectionfactorformulacalculator.cpp \
    standardizeduptakevalueformulacalculator.cpp \
    standardizeduptakevaluebodyweightformulacalculator.cpp \
    standardizeduptakevalueleanbodymassformulacalculator.cpp \
    standardizeduptakevaluebodysurfaceareaformulacalculator.cpp \
    standarduptakevaluemeasurehandler.cpp \
    statswatcher.cpp \
    clippingplanestool.cpp \
    settings.cpp \
    settingsregistry.cpp \
    settingsparser.cpp \
    defaultsettings.cpp \
    coresettings.cpp \
    settingsaccesslevelfilereader.cpp \
    shortcuts.cpp \
    shortcutmanager.cpp \
    volumebuilder.cpp \
    volumebuilderfromcaptures.cpp \
    dicomattribute.cpp \
    dicomvalueattribute.cpp \
    dicomsequenceattribute.cpp \
    dicomsequenceitem.cpp \
    dicomtag.cpp \
    dicomwriter.cpp \
    dicomwriterdcmtk.cpp \
    dicomfilegenerator.cpp \
    dicomimagefilegenerator.cpp \
    dicomvaluerepresentationconverter.cpp \
    dicomserviceresponsestatus.cpp \
    imageorientationoperationsmapper.cpp \
    anatomicalplane.cpp \
    patientorientation.cpp \
    imageorientation.cpp \
    photometricinterpretation.cpp \
    qreleasenotes.cpp \
    qdicomdumpbrowser.cpp \
    applicationversionchecker.cpp \
    dynamicmatrix.cpp \
    screenmanager.cpp \
    screenlayout.cpp \
    screen.cpp \
    colortransferfunction.cpp \
    opacitytransferfunction.cpp \
    qscreendistribution.cpp \
    dicomdumpdefaulttags.cpp \
    dicomdumpdefaulttagsloader.cpp \
    dicomdumpdefaulttagsreader.cpp \
    dicomdumpdefaulttagsrepository.cpp \
    dicomdumpdefaulttagsrestriction.cpp \
    windowlevel.cpp \
    customwindowlevelsloader.cpp \
    customwindowlevelsreader.cpp \
    customwindowlevelsrepository.cpp \
    volumereaderjob.cpp \
    qviewerworkinprogresswidget.cpp \
    qviewercommand.cpp \
    applyhangingprotocolqviewercommand.cpp \
    renderqviewercommand.cpp \
    volumepixeldata.cpp \
    voxel.cpp \
    customwindowlevelswriter.cpp \
    qcustomwindowleveleditwidget.cpp \
    applicationstylehelper.cpp \
    changesliceqviewercommand.cpp \
    qtransferfunctioneditor2.cpp \
    transferfunctioneditor.cpp \
    transferfunctioneditorcommands.cpp \
    qtransferfunctionview.cpp \
    qtransferfunctiongraphicalview.cpp \
    qcolortransferfunctiongraphicalview.cpp \
    qcolortransferfunctiongraphicalviewnode.cpp \
    qopacitytransferfunctiongraphicalview.cpp \
    qopacitytransferfunctiongraphicalviewnode.cpp \
    qopacitytransferfunctiongraphicalviewline.cpp \
    machineidentifier.cpp \
    dicomsource.cpp \
    pacsdevice.cpp \
    machineinformation.cpp \
    diagnosistestresult.cpp \
    applicationupdatechecker.cpp \
    slicelocator.cpp \
    slicehandler.cpp \
    automaticsynchronizationtool.cpp \
    automaticsynchronizationtooldata.cpp \
    firewallaccess.cpp \
    firewallaccesstest.cpp \
    slicingwheeltool.cpp \
    qmessageboxautoclose.cpp \
    commandlineoption.cpp \
    applicationversiontest.cpp \
    imageoverlayregionfinder.cpp \
    systeminformation.cpp \
    systemrequeriments.cpp \
    systemrequerimentstest.cpp \
    magnifyingglasstool.cpp \
    qdiagnosistest.cpp \
    rundiagnosistest.cpp \
    q2dviewerconfigurationscreen.cpp \
    q2dviewerlayoutconfigurationscreen.cpp \
    qlayoutoptionswidget.cpp \
    qmodalitiesselectorgroupbox.cpp \
    circletool.cpp \
    diagnosistestresultwriter.cpp \
    perpendiculardistancetool.cpp \
    glutessellator.cpp \
    qtreewidgetwithseparatorline.cpp \
    diagnosistestproblem.cpp \
    directoryutilities.cpp \
    dicomformattedvaluesconverter.cpp \
    loggingoutputwindow.cpp \
    studylayoutconfig.cpp \
    studylayoutconfigsettingsmanager.cpp \
    studylayoutconfigsettingsconverter.cpp \
    studylayoutconfigsloader.cpp \
    studylayoutmapper.cpp \
    measurementmanager.cpp \
    qnotificationpopup.cpp \
    measurecomputer.cpp \
    distancemeasurecomputer.cpp \
    areameasurecomputer.cpp \
    pixelspacing2d.cpp \
    pixelspacingschemepropertyselector.cpp \
    preferredpixelspacingselector.cpp \
    defaultmeasurementtypeselector.cpp \
    optimalviewersgridestimator.cpp \
    vtkimagedatacreator.cpp \
    itkDCMTKFileReader.cxx \
    itkDCMTKImageIO.cxx \
    itkDCMTKImageIOFactory.cxx \
    volumepixeldatareaderitkdcmtk.cpp \
    postprocessor.cpp \
    computezspacingpostprocessor.cpp \
    pixelspacingamenderpostprocessor.cpp \
    volumepixeldatareaderfactory.cpp \
    volumepixeldatareadervtkdcmtk.cpp \
    vtkdcmtkimagereader.cpp \
    volumepixeldataiterator.cpp \
    patientcomparer.cpp \
    synccriterion.cpp \
    anatomicalplanesynccriterion.cpp \
    inputsynccriterion.cpp \
    modalitysynccriterion.cpp \
    syncaction.cpp \
    zoomfactorsyncaction.cpp \
    pansyncaction.cpp \
    imageorientationsyncaction.cpp \
    signaltosyncactionmapper.cpp \
    zoomfactorsignaltosyncactionmapper.cpp \
    pansignaltosyncactionmapper.cpp \
    imageorientationsignaltosyncactionmapper.cpp \
    syncactionmetadata.cpp \
    syncactionsconfiguration.cpp \
    syncactionsconfigurationmenu.cpp \
    syncactionsconfigurationhandler.cpp \
    syncactionmanager.cpp \
    viewerslayouttosyncactionmanageradapter.cpp \
    vtkdcmtkbydefaultvolumepixeldatareaderselector.cpp \
    itkgdcmbydefaultvolumepixeldatareaderselector.cpp \
    orthogonalplane.cpp \
    filter.cpp \
    filteroutput.cpp \
    windowlevelfilter.cpp \
    blendfilter.cpp \
    mammographyimagehelper.cpp \
    imagepipeline.cpp \
    volumereadermanager.cpp \
    volumedisplayunit.cpp \
    volumedisplayunithandlerfactory.cpp \
    genericvolumedisplayunithandler.cpp \
    singlevolumedisplayunithandler.cpp \
    pairedvolumedisplayunithandler.cpp \
    petctvolumedisplayunithandler.cpp \
    petvolumedisplayunithandler.cpp \
    transferfunctionmodel.cpp \
    transferfunctionmodelfiller.cpp \
    defaulttransferfunctionselector.cpp \
    patientbrowsermenugroup.cpp \
    patientbrowsermenufusionitem.cpp \
    phasesyncaction.cpp \
    phasesignaltosyncactionmapper.cpp \
    thickslabsyncaction.cpp \
    thickslabsignaltosyncactionmapper.cpp \
    qenhancedmenutoolbutton.cpp \
    qfusionbalancewidget.cpp \
    frameofreferencesynccriterion.cpp \
    anglebetweenplanessynccriterion.cpp \
    anatomicalregionsynccriterion.cpp \
    singlesliceorvolumetricsynccriterion.cpp \
    nmvolumedisplayunithandler.cpp \
    nmctvolumedisplayunithandler.cpp \
    nmroidataprinter.cpp \
    nmctfusionroidataprinter.cpp \
    vtkcorrectimageblend.cpp \
    vtktextactorwithbackground.cpp \
    volumereaderjobfactory.cpp \
    relativegeometrylayout.cpp \
    griditerator.cpp \
    voilut.cpp \
    voilutpresetstooldata.cpp \
    qvoilutcombobox.cpp \
    voiluthelper.cpp \
    voilutpresetstool.cpp \
    voilutsyncaction.cpp \
    voilutsignaltosyncactionmapper.cpp \
    hangingprotocolimagesetrestriction.cpp \
    hangingprotocolimagesetrestrictionexpression.cpp \
    hangingprotocolfiller.cpp \
    qfusionlayoutwidget.cpp \
    gridicon.cpp \
    itemmenu.cpp \
    volumefillerstep.cpp \
    qexternalapplicationconfigurationscreen.cpp \
    externalapplication.cpp \
    externalapplicationsmanager.cpp \
    encapsulateddocument.cpp \
    encapsulateddocumentfillerstep.cpp \
    starviewerapplication.cpp \
    qdpiconfigurationscreen.cpp \
    vtkimageextractphase.cpp \
    phasefilter.cpp \
    vtkimagereslicemapper2.cpp \
    sliceorientedvolumepixeldata.cpp \
    voxelindex.cpp

win32 {
    HEADERS += windowsfirewallaccess.h \
               windowssysteminformation.h
    SOURCES += windowsfirewallaccess.cpp \
               windowssysteminformation.cpp
}

OTHER_FILES += ../qml/qmlpatientbrowsermenu.qml

TEMPLATE = lib
DESTDIR = ./
CONFIG += staticlib
include(../corelibsconfiguration.pri)
include(../itk.pri)
include(../gdcm.pri)
include(../vtk.pri)
include(../dcmtk.pri)
include(../compilationtype.pri)
include(../translations.pri)
include(../threadweaver.pri)
QT += xml \
    network \
    xmlpatterns \
    opengl \
    qml \
    quick \
    quickwidgets \
    concurrent \
    webenginewidgets
