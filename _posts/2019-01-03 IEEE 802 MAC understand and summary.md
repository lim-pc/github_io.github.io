
# IEEE 802 MAC 理解与总结
---
## *1. 802 MAC 简介*

&emsp;&emsp;IEEE 802 规格的重心放在 **物理层** 和 **数据链路层**，所有的 802 网络都必然有 MAC 和 PHY 两个部件。其中 MAC 用以配置 **如何访问介质** 和 **数据传输的规则**，PHY决定 **发送和接收的细节**。

## *附言*

### **关键字缩写**

&emsp;&emsp;Logical Link Control, LLC, 逻辑链路控制
&emsp;&emsp;Station, STA, 工作站
&emsp;&emsp;Access Point, AP, 基站
&emsp;&emsp;Radio frequency, RF, 射频
&emsp;&emsp;Basic service set, BSS, 基础服务设置
&emsp;&emsp;Independent BSS, IBSS, 独立基础服务设置
&emsp;&emsp;Extended service set, ESS, 延伸服务设置
&emsp;&emsp;Service set indentifer, SSID, 服务设置识别码
&emsp;&emsp;Inter-access point protocol, IAPP, 基站间访问协议
&emsp;&emsp;Wireless distribution system, WDS, 无线传输系统
&emsp;&emsp;MAC service data unit, MSDU, MAC层服务数据单元
&emsp;&emsp;Transmit power control, TPC, 传输功率控制
&emsp;&emsp;Dynamic frequency selection, DFS, 动态频率选择
&emsp;&emsp;Carrir sense multiple access, CSMA, 多重接入载波侦听
&emsp;&emsp;Collision avoidance, CA, 冲突避免
&emsp;&emsp;Collision Detection, CD, 冲突检测
&emsp;&emsp;Resquest to send, RTS, 请求发送
&emsp;&emsp;Clear to send, CTS, 清空发送通道
&emsp;&emsp;Distributed coordination function, DCF, 分布式协调功能
&emsp;&emsp;Poing coordination function, PCF, 点协调功能
&emsp;&emsp;Hybrid coordination function, HCF, 混合式协调功能
&emsp;&emsp;Network allocation vector, NAV, 网络分配矢量
&emsp;&emsp;Contention-free period, CFP, 免竞争周期
&emsp;&emsp;Association ID, AID, 连接识别码
&emsp;&emsp;Basic service ID, BSSID, 基础服务识别码
&emsp;&emsp;Frame check sequence, FCS, 帧校验序列
