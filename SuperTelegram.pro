TEMPLATE = app
QT += qml quick sql positioning

android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
} else {
    QT += widgets
}

server.source = tg-server.pub
server.target = $${DESTDIR}
translationFiles.source = translations
translationFiles.target = files
DEPLOYMENTFOLDERS = server translationFiles

include(asemantools/asemantools.pri)
include(qmake/qtcAddDeployment.pri)
qtcAddDeployment()

include(telegram/telegram.pri)
include(hyperbus/hyperbus.pri)

SOURCES += main.cpp \
    supertelegram.cpp \
    supertelegramservice.cpp \
    commandsdatabase.cpp \
    timermessagemodel.cpp \
    automessagemodel.cpp \
    sensmessagemodel.cpp \
    backupmanager.cpp \
    profilepicswitchermodel.cpp \
    stghbserver.cpp \
    stghbclient.cpp \
    servicedatabase.cpp

RESOURCES += \
    resource.qrc

HEADERS += \
    supertelegram.h \
    supertelegramservice.h \
    commandsdatabase.h \
    timermessagemodel.h \
    supertelegram_macro.h \
    automessagemodel.h \
    sensmessagemodel.h \
    backupmanager.h \
    profilepicswitchermodel.h \
    stghbserver.h \
    stghbclient.h \
    servicedatabase.h

DISTFILES += \
    android/AndroidManifest.xml \
    android/src/j7zip/Common/BoolVector.java \
    android/src/j7zip/Common/ByteBuffer.java \
    android/src/j7zip/Common/CRC.java \
    android/src/j7zip/Common/IntVector.java \
    android/src/j7zip/Common/LimitedSequentialInStream.java \
    android/src/j7zip/Common/LockedInStream.java \
    android/src/j7zip/Common/LockedSequentialInStreamImp.java \
    android/src/j7zip/Common/LongVector.java \
    android/src/j7zip/Common/ObjectVector.java \
    android/src/j7zip/Common/RecordVector.java
