#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate

# Add a feed source
sed -i '$a src-git helloworld https://github.com/fw876/helloworld/src-git' feeds.conf.default
sed -i '$a src-git xiaorouji https://github.com/xiaorouji/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default


#移除不用软件包
#rm -rf xxx/xxx/xxx/文件名
rm -rf lede/package/lean/luci-theme-argon

#添加额外软件包
git clone https://github.com/cnzd/luci-app-koolproxyR.git         #去广告最新KPR
git clone https://github.com/destan19/OpenAppFilter.git           #APP过滤应用
git clone https://github.com/jerrykuku/luci-theme-argon.git       #取消注释下载最新的argon主题

