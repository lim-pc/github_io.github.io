
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

#### **3.1.1 Frame Control整体结构**

&emsp;&emsp;IEEE 802.11 MAC 帧中帧控制域的前三个子项分别是 协议版本、类型和子类型。剩下的子项都是由 Type 和 Subtype 的配置内容决定的。当 Type 子项的值不为 1 或是 Subtype 子项的值不为 6 时，帧控制的其他子项分别是 To DS、From DS、More Fragments、Retry、Power Management、More Data、Protected Frame 和 +HTC/Order，具体如下图所示：

<img src="../_img/Frame Control field when Type is not equal to 1 or Subtype is not equal to 6.jpg" />

&emsp;&emsp;仅当 类型 子项的值为 1 且 子类型 子项的值为 6 时，帧控制的其他子项分别是 Control Frame Extension、Power Management、More Data、Protected Frame 和 +HTC/Order，具体如下图所示：

<img src="../_img/Frame Control field when Type is equal to 1 and Subtype is equal to 6.jpg" />

#### **3.1.2 Protocol Version协议版本子项**

&emsp;&emsp;协议版本子项的长度固定位 2 bits，且在 802.11 标准中该项的值固定为 0，所有其他值保留。

#### **3.1.3 Type and Subtype类型和子类型子项**

&emsp;&emsp;Type 子项的长度固定是 2 bits，Subtype 子项的长度固定为 4 bits，这两个子项一起定义了 MAC 帧的功能。所有帧分为三类，分别是 控制帧、数据帧和管理帧。每一种帧类型有几种定义的子类型，在数据帧中，Subtype 子项的最高位B7是被定义为 QoS 子项。整体定义如下表：
|Type value [B3:B2]|Type description|Subtype value [B7:B4]|       Subtype description       |
|:----------------:|:--------------:|:-------------------:|:-------------------------------:|
|        00        |   Management   |        0000         |Association Request              |
|        00        |   Management   |        0001         |Association Response             |
|        00        |   Management   |        0010         |Reassociation Request            |
|        00        |   Management   |        0011         |Reassociation Response           |
|        00        |   Management   |        0100         |Probe Request                    |
|        00        |   Management   |        0101         |Probe Response                   |
|        00        |   Management   |        0110         |Time Advertisement               |
|        00        |   Management   |        0111         |Reserved                         |
|        00        |   Management   |        1000         |Beacon                           |
|        00        |   Management   |        1001         |ATIM                             |
|        00        |   Management   |        1010         |Disassociation                   |
|        00        |   Management   |        1011         |Authentication                   |
|        00        |   Management   |        1100         |disauthentication                |
|        00        |   Management   |        1101         |Action                           |
|        00        |   Management   |        1110         |Action No Ack                    |
|        00        |   Management   |        1111         |Reserved                         |
|        01        |     Control    |    0000 - 0011      |Reserved                         |
|        01        |     Control    |        0100         |Beamforming Report Poll          |
|        01        |     Control    |        0101         |VHT NDP Announcement             |
|        01        |     Control    |        0110         |Control Frame Extension          |
|        01        |     Control    |        0111         |Control Wrapper                  |
|        01        |     Control    |        1000         |Block Ack Request(BlockAckReq)   |
|        01        |     Control    |        1001         |Block Ack(BlockAck)              |
|        01        |     Control    |        1010         |PS-Poll                          |
|        01        |     Control    |        1011         |RTS                              |
|        01        |     Control    |        1100         |CTS                              |
|        01        |     Control    |        1101         |Ack                              |
|        01        |     Control    |        1110         |CF-End                           |
|        01        |     Control    |        1111         |CF-End + CF-Ack                  |
|        10        |      Data      |        0000         |Data                             |
|        10        |      Data      |        0001         |Data + CF-Ack                    |
|        10        |      Data      |        0010         |Data + CF-Poll                   |
|        10        |      Data      |        0011         |Data + CF-Ack + CF-Poll          |
|        10        |      Data      |        0100         |Null(no data)                    |
|        10        |      Data      |        0101         |CF-Ack(no data)                  |
|        10        |      Data      |        0110         |CF-Poll(no data)                 |
|        10        |      Data      |        0111         |CF-Ack + CF-Poll(no data)        |
|        10        |      Data      |        1000         |QoS Data                         |
|        10        |      Data      |        1001         |QoS Data + CF-Ack                |
|        10        |      Data      |        1010         |QoS Data + CF-Poll               |
|        10        |      Data      |        1011         |QoS Data + CF-Ack + CF-Poll      |
|        10        |      Data      |        1100         |QoS Null(no data)                |
|        10        |      Data      |        1101         |Reserved                         |
|        10        |      Data      |        1110         |QoS CF-Poll(no data)             |
|        10        |      Data      |        1111         |QoS CF-Ack + CF-Poll(no data)    |
|        11        |    Extension   |        0000         |DMG Beacon                       |
|        11        |    Extension   |    0001 - 1111      |Reserved                         |

&emsp;&emsp;每一个 Subtype 子项的 bit 都定义了一系列的基础数据帧(subtype 0)。帧控制数据子类型的第四位 B4 设置为 1 时包含 +CF-Ack，数据子类型的第五位 B5 设置为 1 时包含 +CF-Poll，数据子类型的第六位 B6 设置为 1 时帧不包含 帧体 子项，QoS 数据子类型的第七位 B7 设置为 1 时在 MAC 帧头中包含 QoS 控制域。

&emsp;&emsp;控制帧扩展子类型是通过使用 [B11:B8] 等位来增加子类型空间，增加的控制帧定义如下表：

|Type value [B3:B2]|Subtype value [B7:B4]|Control Frame Extension value [B11:B8]|Description |
|:----------------:|:-------------------:|:------------------------------------:|:----------:|
|        01        |         0110        |                 0000                 |Reserved    |
|        01        |         0110        |                 0001                 |Reserved    |
|        01        |         0110        |                 0010                 |Poll        |
|        01        |         0110        |                 0011                 |SPR         |
|        01        |         0110        |                 0100                 |Grant       |
|        01        |         0110        |                 0101                 |DMG CTS     |
|        01        |         0110        |                 0110                 |DMG DTS     |
|        01        |         0110        |                 0111                 |Grant Ack   |
|        01        |         0110        |                 1000                 |SSW         |
|        01        |         0110        |                 1001                 |SSW-Feedback|
|        01        |         0110        |                 1010                 |SSW-Ack     |
|        01        |         0110        |              1011-1111               |Reserved    |

#### **3.1.4 To DS and From DS 到DS和从DS子项**

&emsp;&emsp;所有 数据帧的 To DS 和 From DS 子项值含义如下表所示：

|To DS and From DS values|               Meaning              |
|:----------------------:|:----------------------------------:|
|To DS = 0，From DS = 0  |包含相同IBSS或是PBSS的数据帧从一个基站发至另一个基站；包含相同基础BSS的数据帧从一个 non-AP 的基站发至另一个 non-AP 的基站；一个在 BSS 内容之外的数据帧|
|To DS = 1，From DS = 0  ||

## *附言*

### **关键字缩写**

&emsp;&emsp;Organizationally unique identifiers, OUIs,
&emsp;&emsp;Company IDs, CIDs,
&emsp;&emsp;Quality Of Service, QoS,
&emsp;&emsp;contention free, CF,
&emsp;&emsp;distribution system, DS,
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
