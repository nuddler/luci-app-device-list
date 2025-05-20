include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-device-list
PKG_VERSION:=1.0
PKG_RELEASE:=20250520


LUCI_TITLE:=LuCI app for Listing all of connected devices
LUCI_PKGARCH:=all
LUCI_DEPENDS:=+luci-base +luci +ip

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller
	$(INSTALL_BIN) ./luasrc/controller/devices.lua $(1)/usr/lib/lua/luci/controller/
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view/devices
	$(INSTALL_DATA) ./luasrc/view/devices/status.htm $(1)/usr/lib/lua/luci/view/devices/
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) ./root/usr/bin/devices-logger.sh $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/cron.d
	$(INSTALL_DATA) ./files/etc/cron.d/devices-logger $(1)/etc/cron.d/
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
