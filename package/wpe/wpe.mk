################################################################################
#
# WPE
#
################################################################################

WPE_VERSION = 16122014
WPE_SITE = https://github.com/WebKitForWayland/webkit/archive
WPE_SOURCE = wpe-$(WPE_VERSION).tar.gz

WPE_INSTALL_STAGING = YES
WPE_DEPENDENCIES = host-flex host-bison host-gperf host-ruby ruby \
       host-pkgconf zlib pcre libgles libegl cairo freetype fontconfig \
       harfbuzz icu libxml2 libxslt sqlite libsoup jpeg webp \
       wayland weston
       # gstreamer1 gst1-plugins-base gst1-plugins-good gst1-plugins-bad \

WPE_CONF_OPTS = -DPORT=WPE -DENABLE_VIDEO=OFF -DENABLE_VIDEO_TRACK=OFF \
 -DCMAKE_BUILD_TYPE=Release \
 -DCMAKE_C_FLAGS_RELEASE="-O2 -DNDEBUG -Wno-cast-align" \
 -DCMAKE_CXX_FLAGS_RELEASE="-O2 -DNDEBUG -Wno-cast-align"

$(eval $(cmake-package))