#
# base class: meta-qt5/classes/qmake5_paths.bbclass
# base commit: c9a1041cb956d94c04cbf635b00ca19725ffc129
#

# If your distribution supports only qt5, or you don't care
# about conflicts with qt4, then you can add qmake5_paths.bbclass
# to your distro layer and flatten all QT_DIR_NAME directories

QT_DIR_NAME ?= "qt5"

OE_QMAKE_PATH_PREFIX ?= "${prefix}"
OE_QMAKE_PATH_HEADERS ?= "${includedir}/${QT_DIR_NAME}"
OE_QMAKE_PATH_LIBS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}"
OE_QMAKE_PATH_ARCHDATA ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}"
OE_QMAKE_PATH_DATA ?= "${datadir}"
OE_QMAKE_PATH_BINS ?= "${bindir}"
OE_QMAKE_PATH_LIBEXECS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/libexec"
OE_QMAKE_PATH_PLUGINS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/plugins"
OE_QMAKE_PATH_IMPORTS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/imports"
OE_QMAKE_PATH_QML ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/qml"
OE_QMAKE_PATH_TRANSLATIONS ?= "${datadir}/translations"
OE_QMAKE_PATH_DOCS ?= "${docdir}"
OE_QMAKE_PATH_SETTINGS ?= "${sysconfdir}"
OE_QMAKE_PATH_EXAMPLES ?= "${datadir}/examples"
OE_QMAKE_PATH_TESTS ?= "${datadir}/tests"
OE_QMAKE_PATH_HOST_PREFIX ?= ""
OE_QMAKE_PATH_HOST_BINS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/bin"
OE_QMAKE_PATH_HOST_DATA ?= "${QMAKE_MKSPEC_PATH_TARGET}"
OE_QMAKE_PATH_HOST_LIBS ?= "${STAGING_DIR_HOST}${nonarch_libdir}/${DEB_HOST_MULTIARCH}"
OE_QMAKE_PATH_EXTERNAL_HOST_BINS ?= "${STAGING_LIBDIR_NATIVE}/${DEB_BUILD_MULTIARCH}/${QT_DIR_NAME}/bin"

OE_QMAKE_PATH_HOST_BINS_SDK = "${nonarch_libdir}/${DEB_SDK_MULTIARCH}/${QT_DIR_NAME}/bin"

# for qt5 components we're using QT_DIR_NAME subdirectory in more
# variables, because we don't want conflicts with qt4
# This block is usefull for components which install their
# own files without QT_DIR_NAME but need to reference paths e.g. 
# with QT headers
OE_QMAKE_PATH_QT_HEADERS ?= "${includedir}/${QT_DIR_NAME}"
OE_QMAKE_PATH_QT_ARCHDATA ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}"
OE_QMAKE_PATH_QT_DATA ?= "${datadir}/${QT_DIR_NAME}"
OE_QMAKE_PATH_QT_BINS ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/bin"
OE_QMAKE_PATH_QT_TRANSLATIONS ?= "${datadir}/${QT_DIR_NAME}/translations"
OE_QMAKE_PATH_QT_DOCS ?= "${datadir}/${QT_DIR_NAME}/doc"
OE_QMAKE_PATH_QT_SETTINGS ?= "${sysconfdir}/xdg"
OE_QMAKE_PATH_QT_EXAMPLES ?= "${nonarch_libdir}/${DEB_HOST_MULTIARCH}/${QT_DIR_NAME}/examples"
OE_QMAKE_PATH_QT_TESTS ?= "${datadir}/${QT_DIR_NAME}/tests"

OE_QMAKE_PATH_QT_BINS_NATIVE ?= "${nonarch_libdir}/${DEB_BUILD_MULTIARCH}/${QT_DIR_NAME}/bin"

OE_QMAKE_PATH_QT_ARCHDATA_SDK ?= "${nonarch_libdir}/${DEB_SDK_MULTIARCH}/${QT_DIR_NAME}"
