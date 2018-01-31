include $(THEOS)/makefiles/common.mk

DEBUG=0
FINALPACKAGE=1

TWEAK_NAME = nonotificationlock
nonotificationlock_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
