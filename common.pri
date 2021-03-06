CONFIG  += link_prl testcase
CONFIG  -= app_bundle
TEMPLATE = app

CONFIG(qmltestcase) {
# A hack to make sure that a GUI application will have susbsystem=windows, not console
    win32: QMAKE_LFLAGS_CONSOLE =
}
else {
    CONFIG += console
}

lessThan(QT_MAJOR_VERSION, 5) {
    CONFIG += qtestlib
}
else {
    DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0
}

exists($$PWD/../local.pri): include($$PWD/../local.pri)
