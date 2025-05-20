#!/bin/sh
set -e -o nounset

./setup.sh
sed -i 's/git\.openwrt\.org\/project\/luci/github\.com\/openwrt\/luci/g' ./feeds.conf.default
./scripts/feeds update -a
./scripts/feeds install \
  luci-base \
  luci \
  ip
mv ./bin/luci-app-device-list ./package/
make defconfig
make package/luci-app-device-list/compile V=s -j$(nproc) BUILD_LOG=1

tar -cJf logs.tar.xz logs
mv logs.tar.xz bin
