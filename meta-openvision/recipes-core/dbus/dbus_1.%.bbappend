inherit upx_compress

EXTRA_OECONF = "--disable-tests \
				--disable-xml-docs \
				--disable-doxygen-docs \
				--disable-libaudit \
				--enable-largefile \
				--with-system-socket=/var/run/dbus/system_bus_socket \
"
