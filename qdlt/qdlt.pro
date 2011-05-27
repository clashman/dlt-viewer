
PROJECT                 = qdlt
TEMPLATE                = lib

DEFINES += QT_VIEWER

headers.path = /usr/include/qdlt
headers.files = *.h
INSTALLS += headers

target.path = /usr/lib
INSTALLS += target

#CONFIG                 -= debug_and_release
#CONFIG                 += debug
#CONFIG                 += release
CONFIG                 += warn_on qt thread
QT                     -= gui

OBJECTS_DIR             = build/obj
MOC_DIR                 = build/moc
#DEPENDDIR               = .

#INCLUDEDIR              = .
INCLUDEPATH = ../src

SOURCES +=  dlt_common.c \
            qdlt.cpp

HEADERS += dlt_common.h \
           dlt_user_shared.h \
           qdlt.h

unix:VERSION            = 1.0.0

CONFIG(debug, debug|release) {
    DESTDIR = ../debug
    TARGET  = qdltd
}
else {
    DESTDIR = ../release
    TARGET  = qdlt
}
