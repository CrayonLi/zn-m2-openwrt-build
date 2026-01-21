#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#更新所有feeds
./scripts/feeds update -a
#
#优先安装 passwall 源
# ./scripts/feeds install -a -f -p passwall_packages
# ./scripts/feeds install -a -f -p passwall_luci
#
rm -rf feeds/packages/net/luci-app-openclash
rm -rf feeds/luci/applications/luci-app-openclash
rm -rf feeds/packages/net/openclash
#
./scripts/feeds install luci-app-openclash
./scripts/feeds install -p kenzok8 adguardhome
./scripts/feeds install -p kenzok8 luci-app-adguardhome

