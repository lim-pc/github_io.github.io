
# IEEE 802.11 MAC 帧结构理解与总结
---
## *1. 802.11 MAC 帧结构简介*

&emsp;&emsp;IEEE 802.11 MAC 帧结构包含以下几个基础内容：
 * MAC header，MAC 帧头，包括 帧控制、段ID、地址、可选序列控制信息、可选QoS控制信息（QoS数据帧专用）和可选HT控制范围（+HTC帧专用）。
 * variable-length frame body，合法长度的帧体，其包含指定帧类型和子类型的信息。
 * FCS，帧尾包含一个 32-bit CRC 校验值。

## *2. 802.11 MAC 常规帧结构*

&emsp;&emsp;IEEE 802.11 MAC 帧中的前面和三个部分（帧控制、段ID、地址1）和最后一个部分（FCS）就构成了最小的帧格式，且是所有的帧必须有的部分（包含了保留类型和子类型）。地址2、地址3、序列控制、地址4、QoS控制、HT控制和帧体等部分仅出现在包含了帧类型和子类型的帧当中。

<img src="../_img/general frame format.jpg" />

## *3. 802.11 MAC 结构详解*

### **3.1 Frame Control结构**

&emsp;&emsp;

## *附言*

### **关键字缩写**

&emsp;&emsp;Organizationally unique identifiers, OUIs,
&emsp;&emsp;Company IDs, CIDs,
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
