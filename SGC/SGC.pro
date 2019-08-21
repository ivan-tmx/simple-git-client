TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../lib/release/ -lgit2
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../lib/debug/ -lgit2
else:unix:!macx: LIBS += -L$$PWD/../lib/ -lgit2

INCLUDEPATH += $$PWD/../include
DEPENDPATH += $$PWD/../include
