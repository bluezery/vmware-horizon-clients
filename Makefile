INSTALLER=VMware-Horizon-Client-4.5.0-5650368.x64.bundle
TARGET=$(DESTDIR)/usr/share/nemo-vmware/
LIBDIR=$(DESTDIR)/usr/lib/

all:

install:
	mkdir -p $(TARGET) && cp $(INSTALLER) $(TARGET) && \
		mkdir -p $(LIBDIR) && install libpng12.so.0 $(LIBDIR)

uninstall:
	rm -rf $(TARGET)
