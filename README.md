# NanoPi-R2S-2021 精简插件

### 介绍
- Fork自[**DHDAXCW/NanoPi-R2S-2021**](https://github.com/DHDAXCW/NanoPi-R2S-2021)
- 包含原版的基本特性
- 根据R2S的特点去掉一些重复功能和用不上的插件
- 主要满足上网、下载和文件共享的需求
### 默认
- 用户名：root 密码：password 管理IP：192.168.2.1
### 使用tips
- OpenClash包含上网、DNS、去广告一站式服务，前提是得有一个优秀的配置文件，否则可以看下一条
- SSRP的DNS上游交给端口5335，在AdGardhome中设置接管DNS也可以达到同样的效果
- Transmission适合Pt保种，只是下载更建议Aria2，请自行用工具分区然后挂载，并设置好下载位置
- Samba网络共享可以让路由器上的空间和本地文件夹一样，方便在文件管理中打开，需用命令添加用户才能连接
- DDNSTO无需公网ip无需服务器中转，可以从外网连接到路由器
