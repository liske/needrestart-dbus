all:

install: all
	mkdir -p "$(DESTDIR)/usr/bin"
	cp needrestart-x11 "$(DESTDIR)/usr/bin/"
	
	mkdir -p "$(DESTDIR)/usr/lib/needrestart"
	cp needrestart-dbus-system "$(DESTDIR)/usr/lib/needrestart/"
	cp needrestart-dbus-session "$(DESTDIR)/usr/lib/needrestart/"
	chown root:root "$(DESTDIR)/usr/lib/needrestart/" || true
	
	mkdir -p "$(DESTDIR)/etc/dbus-1/system.d"
	cp dbus/net.ibh.NeedRestart.System.conf "$(DESTDIR)/etc/dbus-1/system.d/"
	
	mkdir -p "$(DESTDIR)/usr/share/dbus-1/system-services"
	cp dbus/net.ibh.NeedRestart.System.service "$(DESTDIR)/usr/share/dbus-1/system-services/"

clean:
