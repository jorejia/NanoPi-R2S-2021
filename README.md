# NanoPi-R2S-2021 only

### 介绍
- Fork自[**DHDAXCW/NanoPi-R2S-2021**](https://github.com/DHDAXCW/NanoPi-R2S-2021)
- 包含原版的基本特性
- 完全根据R2S的特点定制插件
- 目标是满足上网、下载和文件共享的需求
### 默认
- 用户名：root 密码：password 管理IP：192.168.2.1
### 使用tips
#### 干净上网
- OpenClash包含上网、DNS、去广告一站式服务，前提是得有一个优秀的配置文件，否则可以看下一条
- SSRP的DNS上游交给端口5335，在AdGardhome中设置接管DNS也可以达到同样的效果
- KoolproxyRP适合对广告屏蔽有深度需求的，可能会有副作用
- DDNS.to简单上手的内网穿透，如果有公网ip那动态DNS更适合
- UPnP和SQM QoS建议做主路由的时候开启
- KMS服务器 `slmgr /skms 192.168.2.1` 你应该懂了
- 磁盘管理可以快速创建磁盘，看不见的空间回来了
- Transmission适合Pt保种，单纯下载更建议Aria2，使用前请置好下载位置
- 网络共享可以让路由器上的空间和本地文件夹一样在文件管理中打开，终端输入 `smbpasswd -a root` 设置一个密码，然后在编辑模板删除或者加#注释掉 `invalid users = root` 就可以用root登录连接了
- BaiduPCS可以登录百度网盘下载东西，比限速的客户端快一丢丢
- miniDLAN和PCHiFi数字转盘遥控都是音视频媒体服务站，支持的设备如电视等可以直接播放路由器上存放的音视频
- 挂载SMB网络共享可以把NAS等设备的空间挂载到路由器上用
- UDP工具，有自己有搭建的双边加速服务器才用的上，可以加速游戏UDP
- Turbo ACC网络加速，开启BBR可以有更好的网页浏览体验
- WatchCat可以设置一个自动重启时间，比如一周，让设备运行更稳定
- 其他插件还有
### 更新
- 随缘更新
- 不支持上传到luci更新固件，需卡刷
- release里的 `XXX-squashfs-sysupgrade.img.gz` 支持恢复到出厂设置
