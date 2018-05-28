TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11
CONFIG += c++14

include( $$PWD/library/MaterialUI/MaterialUI.pri )

SOURCES += \ 
    cpp/main.cpp

HEADERS += \
    cpp/stable.h

RESOURCES += \
    qml/qml.qrc
