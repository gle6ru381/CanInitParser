TEMPLATE = app
CONFIG += console c++17
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp

win32:CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../CanInitParser/release/ -lCanInitParser
else:win32:CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../CanInitParser/debug/ -lCanInitParser

INCLUDEPATH += $$PWD/../CanInitParser
DEPENDPATH += $$PWD/../CanInitParser
