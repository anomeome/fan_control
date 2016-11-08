include $(TOPDIR)/rules.mk

PKG_NAME:=fan_control
PKG_VERSION:=1.0
PKG_RELEASE=$(PKG_SOURCE_VERSION)
PKG_MAINTAINER:=newtownBuild@gmail.com
PKG_LICENSE:=ISC

include $(INCLUDE_DIR)/package.mk

define Package/fan_control/default
  CATEGORY:=Extra packages
  SUBMENU:=Custom feed
  TITLE:=mamba Fan control
endef

define Package/fan_control
  $(Package/fan_control/default)
endef

define Package/fan_control/description
	A procd daemon to control mamba fan
endef

define Package/fan_control/install
	$(CP) ./files/* $(1)/
endef

define Build/Compile
	true
endef

$(eval $(call BuildPackage,fan_control))

