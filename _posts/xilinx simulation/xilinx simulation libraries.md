
# Xilinx Simulation Libraries 学习与总结
---
## **1. Logic Simulation Overview**

Simulation is a process of emulating real design behavior in a software environment. Simulation helps verify the functionality of a design by injecting stimulus and observing the design outputs.

The process of simulation includes:
* Creating test benches, setting up libraries and specifying the simulation settings for Simulation
* Generating a Netlist (if performing post-synthesis or post-implementation simulation)
* Running a Simulation using Vivado simulator or third party simulators

The following figure illustrates the simulation flow for a typical design:

---
## **2. Simulation Flow**

Simulation can be applied at several points in the design flow. It is one of the first steps after design entry and one of the last steps after implementation as part of verifying the end functionality and performance of the design.

<img src="../../_img/Xilinx Simulation Flow.jpg" />

---
### **2.1 Behavioral Simulation at the Register Transfer Level**

Register Transfer Level (RTL) behavioral simulation can include:
* RTL Code
* Instantiated UNISIM library components
* Instantiated UNIMACRO components
* UNISIM gate-level model (for the Vivado logic analyzer)
* SECUREIP Library

RTL-level simulation lets you simulate and verify your design prior to any translation made by synthesis or implementation tools. You can verify your designs as a module or an entity, a block, a device, or a system.

RTL simulation is typically performed to verify code syntax, and to confirm that the code is functioning as intended. In this step, the design is primarily described in RTL and consequently, no timing information is required.

RTL simulation is not architecture-specific unless the design contains an instantiated device library component. To support instantiation, Xilinx® provides the UNISIM library. When you verify your design at the behavioral RTL you can fix design issues earlier and save design cycles.

Keeping the initial design creation limited to behavioral code allows for:
* More readable code
* Faster and simpler simulation
* Code portability (the ability to migrate to different device families)
* Code reuse (the ability to use the same code in future designs)

---
### **2.2 Post-Synthesis Simulation**

You can simulate a synthesized netlist to verify that the synthesized design meets the functional requirements and behaves as expected. Although it is not typical, you can perform timing simulation with estimated timing numbers at this simulation point.

The functional simulation netlist is a hierarchical, folded netlist expanded to the primitive module and entity level; the lowest level of hierarchy consists of primitives and macro primitives.

These primitives are contained in the UNISIMS_VER library for Verilog, and the UNISIM library for VHDL.

---
### **2.3 Post-Implementation Simulation**

You can perform functional or timing simulation after implementation. Timing simulation is the closest emulation to actually downloading a design to a device. It allows you to ensure that the implemented design meets functional and timing requirements and has the expected behavior in the device.

---
IMPORTANT! Performing a thorough timing simulation ensures that the completed design is free of defects that could otherwise be missed, such as:
* Post-synthesis and post-implementation functionality changes that are caused by:
   * Synthesis properties or constraints that create mismatches (such as full_case and parallel_case)
   * UNISIM properties applied in the Xilinx Design Constraints (XDC) file
   * The interpretation of language during simulation by different simulators
* Dual port RAM collisions
* Missing, or improperly applied timing constraints
* Operation of asynchronous paths
   * Functional issues due to optimization techniques
---

---
## **3. Simulating with Third-Party Simulators**

The Vivado® Design Suite supports simulation using third-party tools. Simulation with third-party tools can be performed directly from within the Vivado Integrated Design Environment (IDE) or using a custom external simulation environment.

The following third-party tools are supported:
* Mentor Graphics Questa Advanced Simulator/ModelSim: Integrated in the Vivado IDE.
* Cadence Incisive Enterprise Simulator (IES): Integrated in the Vivado IDE.
* Synopsys VCS: Integrated in the Vivado IDE.
* Aldec Active-HDL and Rivera-PRO Aldec offers support for these simulators.
* Cadence Xcelium Parallel Simulator: Integrated in the Vivado IDE The Vivado Design Suite User Guide: Using the Vivado IDE (UG893) describes the use of the Vivado IDE.

---
### **3.1 Running Simulation Using Third Party Simulators with Vivado IDE**

---
IMPORTANT! Confirm the compiled library location (the path at which compile_simlib was invoked or the one you specified with the -directory option) before running a third-party simulation

---
From the Vivado IDE, you can compile, elaborate, and simulate the design based on the simulation settings and launch the simulator in a separate window.

When you run simulation prior to synthesizing the design, the simulator runs a behavioral simulation. Following each successful design step (synthesis and implementation), the option to run a functional or timing simulation becomes available. You can initiate a simulation run from the Flow Navigator or by typing in a Tcl command.

---
### **3.2 Running Timing Simulation Using Third-Party Tools**

---
TIP: Post-Synthesis timing simulation uses the estimated timing delay from the synthesized netlist. Post-Implementation timing simulation uses actual timing delays.

---
When you run Post-Synthesis and Post-Implementation timing simulation, the simulators include:
* Gate-level netlist containing SIMPRIMS library components
* SECUREIP
* Standard Delay Format (SDF) files
You define the overall design functionality in the beginning. When the design is implemented, accurate timing information is available.

To create the netlist and SDF, the Vivado Design Suite:
* Calls the netlist writer, write_verilog with the -mode timesim switch and write_sdf(SDF annotator)
* Sends the generated netlist to the target simulator

---
IMPORTANT! Post-Synthesis and Post-Implementation timing simulations are supported for Verilog only. There is no support for VHDL timing simulation. If you are a VHDL user, you can run post-synthesis and postimplementation functional simulation (in which case no SDF annotation is required and the simulation netlist uses the UNISIM library). You can create the netlist using the write_vhdl Tcl command. For usage information, refer to the Vivado Design Suite Tcl Command Reference Guide (UG835).

---
---
## **4. Xilinx Simulation Libraries**

You can use Xilinx simulation libraries with any simulator that supports the VHDL-93 and Verilog-2001 language standards. Certain delay and modeling information is built into the libraries; this is required to simulate the Xilinx hardware devices correctly.

Use non-blocking assignments for blocks within clocking edges. Otherwise, write code using blocking assignments in Verilog. Similarly, use variable assignments for local computations within a process, and use signal assignments when you want data-flow across processes.

If the data changes at the same time as a clock, it is possible that the simulator will schedule the data input to occur after the clock edge. The data does not go through until the next clock edge, although it is possible that the intent was to have the data clocked in before the first clock edge.

When you instantiate a component in your design, the simulator must reference a library that describes the functionality of the component to ensure proper simulation. The Xilinx libraries are divided into categories based on the function of the model.

The following table lists the Xilinx-provided simulation libraries:

|Library Name |                      Description                      | VHDL Library Name | Verilog Library Name |
|:-----------:|:------------------------------------------------------|:-----------------:|:--------------------:|
|   UNISIM    | Functional simulation of Xilinx primitives.           |       UNISIM      |       UNISIMS_VER    |
|  UNIMACRO   | Functional simulation of Xilinx macros.               |      UNIMACRO     |      UNIMACRO_VER    |
|   UNIFAST   | Fast simulation library.                              |      UNIFAST      |       UNIFAST_VER    |
|   SIMPRIM   | Timing simulation of Xilinx primitives.               |         N/A       |      SIMPRIMS_VER    |
|  SECUREIP   | Simulation library for both functional and timing simulation of Xilinx device features, such as the PCIe IP, Gigabit Transceiver etc., You can find the list of IP's under SECUREIP at the following location: '<Vivado_Install_Dir>/data/secureip'                                  |      SECUREIP     |       SECUREIP       |
|     XPM     | Functional simulation of Xilinx primitives            |        XPM        |           XPM        |

---

Notes:

1. The SIMPRIMS_VER is the logical library name to which the Verilog SIMPRIM physical library is mapped.
2. XPM is supported as a pre-compiled IP. Hence, you need not add the source file to the project. For third party
simulators, the Vivado tools will map to pre-compiled IP generated with compile_simlib.

---
IMPORTANT! You must specify different simulation libraries according to the simulation points. There are different gate-level cells in pre- and post-implementation netlists.

---
Simulation Points and Relevant Libraries:

|Simulation Point | UNISIM | UNIFAST | UNIMACRO | SECUREIP | SIMPRIM (Verilog Only) | SDF |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
|Register Transfer Level (RTL) (Behavioral)  | Yes | Yes | Yes | Yes | N/A | No  |
|Post-Synthesis Simulation (Functional)      | Yes | Yes | N/A | Yes | N/A | N/A |
|Post-Synthesis Simulation (Timing)          | N/A | N/A | N/A | Yes | Yes | Yes |
|Post-Implementation Simulation (Functional) | Yes | Yes | N/A | Yes | N/A | N/A |
|Post- Implementation Simulation (Timing)    | N/A | N/A | N/A | Yes | Yes | Yes |

Note:

Verilog SIMPRIMS_VER uses the same source as UNISIM with the addition of specify blocks for timing annotation. SIMPRIMS_VER is the logical library name to which the Verilog physical SIMPRIM is mapped.

---
### **4.1 UNISIM Library**

Functional simulation uses the UNISIM library and contains descriptions for device primitives or lowest-level building blocks.

---
IMPORTANT! By default, the compile_simlib command compiles the static simulation files for all the IP's in the IP Catalog.

---
IMPORTANT! Verilog module names and file names are uppercase. For example, module BUFG is BUFG.v, and module IBUF is IBUF.v. Ensure that UNISIM primitive instantiations adhere to an uppercase naming convention.

---
**VHDL UNISIM Library**

The VHDL UNISIM library is divided into the following files, which specify the primitives for the Xilinx device families:
* The component declarations (unisim_VCOMP.vhd)
* Package files (unisim_VPKG.vhd)

---
IMPORTANT! You must also compile the library and map the library to the simulator. The method depends on the simulator.

---
**Verilog UNISIM Library**

In Verilog, the individual library modules are specified in separate HDL files. This allows the -y library specification switch to search the specified directory for all components and automatically expand the library.

The Verilog UNISIM library cannot be specified in the HDL file prior to using the module. To use the library module, specify the module name using all uppercase letters.

---
### **4.2 UNIMACRO Library**

The UNIMACRO library is used during functional simulation and contains macro descriptions for selected device primitives.

**VHDL UNIMACRO Library**

To use these primitives, place the following two lines at the beginning of each file:

```VHDL
library UNIMACRO;
use UNIMACRO.Vcomponents.all;
```

**Verilog UNIMACRO Library**

In Verilog, the individual library modules are specified in separate HDL files. This allows the -y library specification switch to search the specified directory for all components and automatically expand the library.

The Verilog UNIMACRO library does not need to be specified in the HDL file prior to using the modules as is required in VHDL. To use the library module, specify the module name using all uppercase letters. You must also compile and map the library; the method you use depends on the simulator you choose.

---
### **4.3 SIMPRIM Library**

Use the SIMPRIM library for simulating timing simulation netlists produced after synthesis or implementation.

---
IMPORTANT! Timing simulation is supported in Verilog only; there is no VHDL version of the SIMPRIM library.

---
TIP: If you are a VHDL user, you can run post synthesis and post implementation functional simulation (in which case no standard default format (SDF) annotation is required and the simulation netlist uses the UNISIM library). You can create the netlist using the write_vhdl Tcl command. For usage information, refer to the Vivado Design Suite Tcl Command Reference Guide (UG835).

---
---
### **4.4 SECUREIP Simulation Library**

Use the SECUREIP library for functional and timing simulation of complex device components, such as GT.

Note:
Secure IP Blocks are fully supported in the Vivado simulator without additional setup.

Xilinx leverages the encryption methodology as specified in the IEEE standard Recommended Practice for Encryption and Management of Electronic Design Intellectual Property (IP) (IEEE-STDP1735). The library compilation process automatically handles encryption.

Note:
See the simulator documentation for the command line switch to use with your simulator to specify libraries.

The following table lists special considerations that must be arranged with your simulator vendor for using these libraries.

Special Considerations for Using SECUREIP Libraries:

|Simulator Name            | Vendor           |  Requirements                                                 |
|:------------------------|:----------------|:-------------------------------------------------------------|
| ModelSim SE  <br>ModelSim PE <br>ModelSim DE <br>Questa Advanced Simulator | Mentor Graphics | If design entry is in VHDL, a mixed language license or a SECUREIP OP is required. Contact the vendor for more information. |
|VCS and VCS MX            | Synopsys         |                                                               |
|Active-HDL / Riviera-PRO* | Aldec            | If design entry is VHDL only, a SECUREIP language-neutral license is required. Contact the vendor for more information. |

**VHDL SECUREIP Library**

The UNISIM library contains the wrappers for VHDL SECUREIP. Place the following two lines at the beginning of each file so that the simulator can bind to the entity:

```VHDL
Library UNISIM;
UNISIM.VCOMPONENTS.all;

```

**Verilog SECUREIP Library**
When running a simulation using Verilog code, you must reference the SECUREIP library for most simulators.

**UNIFAST Library**

The UNIFAST library is an optional library that you can use during RTL behavioral simulation to speed up simulation run time.

---
IMPORTANT! The UNIFAST library is an optional library that you can use during functional simulation to speed up simulation runtime. UNIFAST libraries are supported for 7 series devices only. UltraScale and later device architectures do not support UNIFAST libraries, as all the optimizations are incorporated in the UNISIM libraries by default. UNIFAST libraries cannot be used for sign-off simulations because the library components do not have all the checks/features that are available in a full model.

---
RECOMMENDED: Use the UNIFAST library for initial verification of the design and then run a complete verification using the UNISIM library.

---
The simulation run time improvement is achieved by supporting a subset of the primitive
features in the simulation mode.

Note: The simulation models check for unsupported attribute values only.

**Using Verilog UNIFAST Library**

To reduce the simulation runtimes, the fast GTXE2 simulation model has the following feature differences:
* GTX links must be of synchronous with no Parts Per Million (PPM) rate differences between the near and far end link partners.
* Latency through the GTX is not cycle accurate with the hardware operation.

**Method 1: Using the complete Verilog UNIFAST library (Recommended)**

Method 1 is the recommended method whereby you simulate with all the UNIFAST models.

Use the following Tcl command in Tcl console to enable UNIFAST support (fast simulation models) in a Vivado project environment for the Vivado simulator, ModelSim, IES, or VCS:

`set_property unifast true [current_fileset –simset]`

**Method 2: Using specific UNIFAST modules**

Recommended for more advanced users who want to specify which modules to simulate with the `UNIFAST` models.

To specify individual library components, Verilog configuration statements are used. Specify the following in the `config.v` file:

* The name of the top-level module or configuration (for example: `config cfg_xilinx;`)
* The name to which the design configuration applies (for example: `design test bench;`)
* The library search order for cells or instances that are not explicitly called out (for example: `default liblist unisims_ver unifast_ver;`)
* The map for a particular CELL or INSTANCE to a particular library (For example: `instance testbench.inst.O1 use unifast_ver.MMCME2;`)

Note: For ModelSim (vsim) only -genblk is added to hierarchy name. (For example: `instance testbench.genblk1.inst.genblk1.O1 use unifast_ver.MMCME2; - VSIM`)

Example config.v

```VHDL
config cfg_xilinx;
design testbench;
default liblist unisims_ver unifast_ver;
//Use fast MMCM for all MMCM blocks in design
cell MMCME2 use unifast_ver.MMCME2;
//use fast dSO48E1for only this specific instance in the design
instance testbench.inst.O1 use unifast_ver.DSP48E1;
//If using ModelSim or Questa, add in the genblk to the name
(instance testbench.genblk1.inst.genblk1.O1 use unifast_ver.DSP48E1)
endconfig
```

**Using VHDL UNIFAST Library**

The VHDL UNIFAST library has the same basic structure as Verilog and can be used with architectures or libraries. You can include the library in the test bench file.

The following example uses a drill-down hierarchy with a `for` call:

```VHDL
library unisim;
library unifast;
configuration cfg_xilinx of testbench is for xilinx
... for inst:netlist
....... use entity work.netlist(inst);
....... for inst
........... for all:MMCME2
............... use entity unifast.MMCME2;
........... end for;
....... for O1 inst:DSP48E1;
........... use entity unifast.DSP48E1;
....... end for;
... end for;
end cfg_xilinx;

```

Note: If you want to use a VHDL UNIFAST model, you have to use a configuration to bind the UNIFAST library during elaboration.


---
> | Properity | Details|
> |:----------|:-------|
> |position   | post
> |title      | Xilinx simulation libraries
> |date       | 2020年11月23日20点31分
> |author     | Lim
> |tags       | Simulation
---
