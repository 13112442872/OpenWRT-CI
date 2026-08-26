rm -rf package/emortal/luci-app-athena-led
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led
chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

# 引入 OpenClash 与 SmartDNS，供 6.12 工作流的配置选项使用
git clone --depth=1 https://github.com/vernesong/OpenClash openclash-source
mv openclash-source/luci-app-openclash package/luci-app-openclash
rm -rf openclash-source
git clone --depth=1 -b lede https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
git clone --depth=1 https://github.com/pymumu/openwrt-smartdns package/smartdns
