ifeq ($(GNUSTEP_MAKEFILES),)
 GNUSTEP_MAKEFILES := $(shell gnustep-config --variable=GNUSTEP_MAKEFILES 2>/dev/null)
endif
ifeq ($(GNUSTEP_MAKEFILES),)
 $(error You need to set GNUSTEP_MAKEFILES before compiling!)
endif

include $(GNUSTEP_MAKEFILES)/common.make

VERSION = 1.0.0
PACKAGE_NAME = TiffViewer
APP_NAME = TiffViewer
TiffViewer_APPLICATION_ICON = TiffViewer.tiff

TiffViewer_HEADER_FILES = \
	AppController.h \
	ImageModel.h

TiffViewer_OBJC_FILES = main.m \
	AppController.m \
	ImageModel.m

TiffViewer_RESOURCE_FILES = TiffViewer.gorm \
	Resources/Logo.png \


-include GNUmakefile.preamble
include $(GNUSTEP_MAKEFILES)/aggregate.make
include $(GNUSTEP_MAKEFILES)/application.make
-include GNUmakefile.postamble

      