[![Choaib ELMADI - Verilog](https://img.shields.io/badge/Choaib_ELMADI-Verilog-8800dd)](https://elmadichoaib.vercel.app) ![Status - Learning](https://img.shields.io/badge/Status-Learning-2bd729) [![Credit - Intel Learning](https://img.shields.io/badge/Credit-Intel_Learning-3b8af2)](https://learning.intel.com/developer/learn/courses/235/verilog-hdl-basics/lessons/37535:2308/verilog-hdl-basics)

# Getting Started with Verilog

Verilog is a hardware description language (HDL) used to model and design digital circuits. It allows engineers to describe the structure and behavior of electronic systems, making it a crucial tool in FPGA and ASIC development.

<div align="center">

![What is Verilog](./Images/what-is-verilog.png)

</div>

## Verilog Workflow

The process of running Verilog code involves several steps:

1. **Synthesis**: After engineers write the code using Verilog, it is processed by a tool, `similar to a compiler`, to generate a synthesized circuit netlist. Netlists define components and their interconnections, translating Verilog code into a digital logic representation.

2. **Place and Route**: The netlist is mapped to the physical resources of the target architecture, determining the placement of components and routing the connections between them.

<div align="center">

![Verilog Processing](./Images/verilog-workflow.png)

</div>

## Used Tools

To run and simulate Verilog code, you will need the following tools. Below are links to install them:

- **ModelSim**: A logic simulation tool - [Download link](https://www.intel.com/content/www/us/en/software-kit/660907/intel-quartus-prime-lite-edition-design-software-version-20-1-1-for-windows.html):

  - Select: **Individual Files**
  - Under **Intel® Quartus® Software**, download: **ModelSim-Intel® FPGA Edition (includes Starter Edition)**

- **Quartus Prime Lite**: An FPGA synthesis / implementation tool - [Download link](https://www.intel.com/content/www/us/en/software-kit/825278/intel-quartus-prime-lite-edition-design-software-version-23-1-1-for-windows.html):

  - Select: **Individual Files**
  - Under **Intel® Quartus® Software**, download: **Quartus® Prime (includes Nios II EDS)**

- **MAX10 Device Files**: MAX10 FPGA device information - [Download link](https://www.intel.com/content/www/us/en/software-kit/825278/intel-quartus-prime-lite-edition-design-software-version-23-1-1-for-windows.html):

  - Select: **Individual Files**
  - Under **Devices**, download: **MAX® 10 FPGA device support**

Place all the downloaded files in the same directory, then launch `Quartus Prime Lite` and `ModelSim` to begin your workflow.
