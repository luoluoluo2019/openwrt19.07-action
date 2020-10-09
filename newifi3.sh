#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================

# Add a feed source
sed -i '$a src-git helloworld https://github.com/fw876/helloworld/src-git' feeds.conf.default
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
