<h1><center><b><a href="https://github.com/jorejia/NanoPi-R2S-2021">NanoPi-R2S-2021 only</a></b></center></h1>

## 介绍
- Fork自[**DHDAXCW/NanoPi-R2S-2021**](https://github.com/DHDAXCW/NanoPi-R2S-2021)
- 源码来自[**SuLingGG/OpenWrt-Rpi**](https://github.com/SuLingGG/OpenWrt-Rpi)的rockchip部分，包含原版固件特色，具体内容自行移步
- 融合了[**QiuSimons/R2S-R4S-X86-OpenWrt**](https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt)的一些内容
- 固件自带插件追求稳定、精简、实用，目标是满足上网、下载和文件共享的需求，适合拿来就用不喜欢折腾的
- 支持自定义拓展插件，软件源和[**SuLingGG/OpenWrt-Mini**](https://github.com/SuLingGG/OpenWrt-Mini)项目对接，提供 7000 余个软件包以及 189 个 LuCI APP (截止 2021-02-22)，和本固件兼容可以无脑opkg安装
## 默认
- WAN口和LAN口互换
- 管理IP：192.168.2.1
- 用户名：root    密码：password
## 使用tips
- OpenClash包含上网、DNS、去广告一站式服务，前提是得有一个优秀的配置文件，否则可以看下一条
- AdGardHome已预配置预装内核，支持无脑开启，自带DoH与DoT的DNS并行加速，广告屏蔽list，后台默认用户名root密码password
    - 单独使用：直接开启
    - 配合SSRP：SSRP中选择dns解析方式为本机端口5335的dns服务，然后直接开启adgardhome完成套娃
- DDNS.to简单上手的内网穿透，如果有公网ip那动态DNS更适合
- UPnP和SQM QoS建议做主路由的时候开启
- KMS服务器 `slmgr /skms 192.168.2.1` 你应该懂了
- 磁盘管理可以快速创建磁盘分区，以及挂载分区，看不见的空间又回来了
- Transmission适合Pt保种，单纯下载更建议Aria2，使用前请置好下载位置
- 网络共享可以让路由器上的空间和本地文件夹一样在文件管理中打开，终端输入 `smbpasswd -a root` 设置一个密码，然后在编辑模板删除或者加#注释掉 `invalid users = root` 就可以用root登录连接了
- 挂载SMB网络共享可以把NAS等设备的空间挂载到路由器上用
- BaiduPCS可以登录百度网盘下载东西，比限速的客户端快一丢丢，建议使用BDUSS登陆
- miniDLAN和PCHiFi数字转盘遥控都是音视频媒体服务站，支持的设备如电视等可以直接播放路由器上存放的音视频
- 解锁网易云灰色歌曲，用其他音乐源自动替换
- 迅雷快鸟，保持登录加速宽带，如果你有账号的话
- Turbo ACC网络加速，开启BBR可以有更好的网页浏览体验
- WatchCat可以设置一个自动重启时间，比如一周，设备运行更稳定
- 上网时间控制，管理家里的孩子上网
- 网络唤醒，可以远程开机，要到自己电脑bios里面设置允许
## 拓展插件安装指南
支持拓展安装的 LuCI APP 列表:
<https://github.com/SuLingGG/OpenWrt-Mini/blob/main/doc/LuCI-App-List.md>

可以在 **系统-软件包** 先更新软件列表，然后直接搜索安装，也可以根据以下说明在终端命使用令行安装

更新软件包索引:
```
opkg update
```
列出可安装的所有 LuCI APP :
```
opkg list | grep luci-app | grep -v Translation
```
安装软件包 (以 luci-app-ssr-plus 为例):
```
opkg install luci-app-ssr-plus
```
若发现此时新安装软件包界面为英文，则尝试查找该软件包的中文翻译包:
```
opkg list | grep luci-app-ssr-plus | grep zh-cn
```
此时可以得到该软件包的中文翻译包为 `luci-i18n-ssr-plus-zh-cn`，使用 `opkg install` 命令安装此翻译包即可:
```
opkg install luci-i18n-ssr-plus-zh-cn
```
## 下载和更新
- 和上游源码同步更新，固件自带插件更新后即最新版，拓展安装的插件更新后重新安装即为最新版，无论如何请下载最新的release [**点我下载**](https://github.com/jorejia/NanoPi-R2S-2021/releases/latest)
- 第一次使用请卡刷
- release里的 `XXX-squashfs-sysupgrade.img.gz` 支持重置恢复初始状态，支持直接上传luci升级固件（ `.img` 文件），如果升级失败，也可点击 **生成备份** 下载当前配置文件的 `.tar` 存档，卡刷安装后上传此 `.tar` 存档即可恢复之前固件的设置
## 鸣谢
特别感谢以下项目：
- <https://github.com/openwrt/openwrt>
- <https://github.com/coolsnowwolf/lede>
- <https://github.com/Lienol/openwrt>
- <https://github.com/immortalwrt/immortalwrt>
- <https://github.com/SuLingGG/OpenWrt-Rpi>
- <https://github.com/SuLingGG/OpenWrt-Mini>
- <https://github.com/DHDAXCW/NanoPi-R2S-2021>
- <https://github.com/QiuSimons/R2S-R4S-X86-OpenWrt>
