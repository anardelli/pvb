######################################################################
# generated by pvdevelop at: Mi Nov 8 11:58:45 2006
######################################################################

TEMPLATE = app
CONFIG   = warn_on release console
CONFIG  -= qt

# Input
HEADERS += pvapp.h      \
           mask11_slots.h \
           mask10_slots.h \
           mask9_slots.h \
           mask8_slots.h \
           mask7_slots.h \
           mask6_slots.h \
           mask5_slots.h \
           mask4_slots.h \
           mask3_slots.h \
           mask2_slots.h \
           mask1_slots.h
SOURCES += main.cpp     \
           mask11.cpp \
           mask10.cpp \
           mask9.cpp \
           mask8.cpp \
           mask7.cpp \
           mask6.cpp \
           mask5.cpp \
           mask4.cpp \
           mask3.cpp \
           mask2.cpp \
           mask1.cpp

!macx {
unix:LIBS          += /usr/lib/libpvsmt.so -lpthread
#unix:LIBS         += /usr/lib/libpvsid.so
unix:INCLUDEPATH   += /opt/pvb/pvserver
unix:LIBS         += /usr/lib/librllib.so
unix:INCLUDEPATH  += /opt/pvb/rllib/lib
}

macx:LIBS          += /opt/pvb/pvserver/libpvsmt.a /usr/lib/libpthread.dylib
#macx:LIBS         += /opt/pvb/pvserver/libpvsid.a
macx:INCLUDEPATH   += /opt/pvb/pvserver
macx:LIBS         += /usr/lib/librllib.dylib
macx:INCLUDEPATH  += /opt/pvb/rllib/lib

#
# Attention:
# Because we now also use the IPV6 library wsock32 has been replaced by ws2_32 for MinGW
# You will have to adjust existing project files
#
win32-g++ {
QMAKE_LFLAGS      += -static-libgcc
win32:LIBS        += $(PVBDIR)/win-mingw/bin/librllib.a
#win32:LIBS         += $(PVBDIR)/win-mingw/bin/libserverlib.a $(MINGWDIR)/lib/libws2_32.a $(MINGWDIR)/lib/libadvapi32.a
win32:LIBS         += $(PVBDIR)/win-mingw/bin/libserverlib.a $(MINGWDIR)/lib/libws2_32.a $(MINGWDIR)/lib/libadvapi32.a
win32:INCLUDEPATH  += $(PVBDIR)/pvserver
win32:INCLUDEPATH += $(PVBDIR)/rllib/lib
}
else {
win32:LIBS         += $(PVBDIR)\win\bin\serverlib.lib wsock32.lib advapi32.lib
win32:INCLUDEPATH  += $(PVBDIR)\pvserver
win32:LIBS        += $(PVBDIR)\win\bin\rllib.lib
win32:INCLUDEPATH += $(PVBDIR)\rllib\lib
}

#DEFINES += USE_INETD
TARGET = pvsexample
