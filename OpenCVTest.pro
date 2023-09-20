QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    facedetector.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    facedetector.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

INCLUDEPATH += D:\Work\OtherFiles\opencv\buildCMake\install\include

OPENCVBIN = D:\Work\OtherFiles\opencv\buildCMake\bin

# Define preprocessor variables to keep paths of asset files
DEFINES += FACE_DETECTION_CONFIGURATION=\\\"$$PWD/deploy.prototxt\\\"
DEFINES += FACE_DETECTION_WEIGHTS=\\\"$$PWD/res10_300x300_ssd_iter_140000_fp16.caffemodel\\\"

LIBS += $$OPENCVBIN\libopencv_core480.dll \
$$OPENCVBIN\libopencv_imgproc480.dll \
$$OPENCVBIN\libopencv_highgui480.dll \
$$OPENCVBIN\libopencv_imgcodecs480.dll \
$$OPENCVBIN\libopencv_features2d480.dll \
$$OPENCVBIN\libopencv_calib3d480.dll \
$$OPENCVBIN\libopencv_video480.dll \
$$OPENCVBIN\libopencv_videoio480.dll \
$$OPENCVBIN\libopencv_dnn480.dll \

DISTFILES += \
    assets/deploy.prototxt \
    assets/res10_300x300_ssd_iter_140000_fp16.caffemodel

