# Notes about component selection

This document describes the considerations needed with some components.
Not everything can be described perfectly on the schematics
without cluttering the entire thing.

## Considerations around TPS65266-1

### Introduction

The [TPS65266-1](https://www.ti.com/product/TPS65266-1) is a Switched Mode Power Supply (SMPS).
The TPS65266-1 incorporates 3 channels of high-efficiency synchronous buck converter for applications operating off the adaptor or battery with input voltage lower than 6 V.
It is used here to generate 1.2V, 1.8V and 3.3V for the different components.

### LX inductors (L1, L2 and L3)

**TODO: write**

lx inductor: MAKK2520H100M 10uH
	- calculated value
	- max DC current 500mA
lx capacitor: CL21A226MQQNNNF 22uF
	- calculated value
	- Resr must be within range
vin capacitor: CL10A106KQ8NNNC 10uF
	- 10uF recommended
	- high-quality ceramic type (X5R or X7R)
Rc resistor:
	- calculated value
Cc capacitor:
	- calculated value
Sense resistors:
	- used values from table
	- tolerance <1% recommended
Css capacitor:
	- consider downstream specific timings
	- FPGA has no requirements
Bootstrap capacitor:
	- 47nF recommended
	- voltage rating of 10V or higher
Pgood pullup resistor:
	- between 10k and 100k recommended
Rosc:
	- calculated value
	- fsw = 100MHz