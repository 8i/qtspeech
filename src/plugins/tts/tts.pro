TEMPLATE = subdirs

unix {
    CONFIG += link_pkgconfig
    packagesExist(speech-dispatcher) {
        SUBDIRS += speechdispatcher
    }
}

# mingw needs copies of the structures defined in sapi.h
# until those are written, disable the sapi plugin for mingw
windows:!winrt:!mingw: SUBDIRS += sapi
winrt: SUBDIRS += winrt

osx: SUBDIRS += osx

config_flite {
    SUBDIRS += flite
}
