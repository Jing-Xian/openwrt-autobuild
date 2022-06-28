#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Modify the default LAN port IP
#sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

sed -i 's/192.168.1.1/192.168.8.1/g' package/base-files/files/bin/config_generate

# Modify the Compiler author information
#sed -i "751i \\\t\t<tr><td width=\"33%\"><%:Compiler author%></td><td>nili\tQQ:1791356563</td></tr>" package/lean/autocore/files/x86/index.htm
#sed -i "742i \\\t\t<tr><td width=\"33%\"><%:Compiler author%></td><td>nili\tQQ:1791356563</td></tr>" package/lean/autocore/files/arm/index.htm

sed -i "751i \\\t\t<tr><td width=\"33%\"><%:Compiler author%></td><td>nili\tQQ:1791356563</td></tr>" package/lean/autocore/files/x86/index.htm
sed -i "742i \\\t\t<tr><td width=\"33%\"><%:Compiler author%></td><td>nili\tQQ:1791356563</td></tr>" package/lean/autocore/files/arm/index.htm

# Modify the login page banner information
#sed -i '1,9d' package/base-files/files/etc/banner
#sed -i "1i \\\nNNNNNNNN        NNNNNNNNIIIIIIIIIILLLLLLLLLLL             IIIIIIIIII\nN:::::::N       N::::::NI::::::::IL:::::::::L             I::::::::I\nN::::::::N      N::::::NI::::::::IL:::::::::L             I::::::::I\nN:::::::::N     N::::::NII::::::IILL:::::::LL             II::::::II\nN::::::::::N    N::::::N  I::::I    L:::::L                 I::::I  \nN:::::::::::N   N::::::N  I::::I    L:::::L                 I::::I  \nN:::::::N::::N  N::::::N  I::::I    L:::::L                 I::::I  \nN::::::N N::::N N::::::N  I::::I    L:::::L                 I::::I  \nN::::::N  N::::N:::::::N  I::::I    L:::::L                 I::::I  \nN::::::N   N:::::::::::N  I::::I    L:::::L                 I::::I  \nN::::::N    N::::::::::N  I::::I    L:::::L                 I::::I  \nN::::::N     N:::::::::N  I::::I    L:::::L         LLLLLL  I::::I  \nN::::::N      N::::::::NII::::::IILL:::::::LLLLLLLLL:::::LII::::::II\nN::::::N       N:::::::NI::::::::IL::::::::::::::::::::::LI::::::::I\nN::::::N        N::::::NI::::::::IL::::::::::::::::::::::LI::::::::I\nNNNNNNNN         NNNNNNNIIIIIIIIIILLLLLLLLLLLLLLLLLLLLLLLLIIIIIIIIII\n\n%D %V, %C, Power By Nili, QQ:1791356563\n" package/base-files/files/etc/banner

sed -i '1,9d' package/base-files/files/etc/banner
sed -i "1i \\\nNNNNNNNN        NNNNNNNNIIIIIIIIIILLLLLLLLLLL             IIIIIIIIII\nN:::::::N       N::::::NI::::::::IL:::::::::L             I::::::::I\nN::::::::N      N::::::NI::::::::IL:::::::::L             I::::::::I\nN:::::::::N     N::::::NII::::::IILL:::::::LL             II::::::II\nN::::::::::N    N::::::N  I::::I    L:::::L                 I::::I  \nN:::::::::::N   N::::::N  I::::I    L:::::L                 I::::I  \nN:::::::N::::N  N::::::N  I::::I    L:::::L                 I::::I  \nN::::::N N::::N N::::::N  I::::I    L:::::L                 I::::I  \nN::::::N  N::::N:::::::N  I::::I    L:::::L                 I::::I  \nN::::::N   N:::::::::::N  I::::I    L:::::L                 I::::I  \nN::::::N    N::::::::::N  I::::I    L:::::L                 I::::I  \nN::::::N     N:::::::::N  I::::I    L:::::L         LLLLLL  I::::I  \nN::::::N      N::::::::NII::::::IILL:::::::LLLLLLLLL:::::LII::::::II\nN::::::N       N:::::::NI::::::::IL::::::::::::::::::::::LI::::::::I\nN::::::N        N::::::NI::::::::IL::::::::::::::::::::::LI::::::::I\nNNNNNNNN         NNNNNNNIIIIIIIIIILLLLLLLLLLLLLLLLLLLLLLLLIIIIIIIIII\n\n%D %V, %C, Power By Nili, QQ:1791356563\n" package/base-files/files/etc/banner

# Add third-party plugin libraries
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '5i src-git kenzo https://github.com/kenzok8/openwrt-packages\nsrc-git small https://github.com/kenzok8/small' feeds.conf.default

sed -i '5i src-git kenzo https://github.com/kenzok8/openwrt-packages\nsrc-git small https://github.com/kenzok8/small\nsrc-git nas https://github.com/linkease/nas-packages.git;master\nsrc-git nas_luci https://github.com/linkease/nas-packages-luci.git;main' feeds.conf.default
