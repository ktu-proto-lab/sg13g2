## Using Extracted Parasitics (PEX)

To use the extracted parasitics `.spice` file, include it in the ngspice model list:

```spice
.include ~/comparator_pex.spice
```

To match the extracted parasitics `.spice` file pins, add these lines to the comparator symbol (e.g. `x1`) properties:

```
type=primitive
format="@name @@VSS @@Clk_c @@VDDH @@V+ @@V- @@Out_p @@Out_n TOP"
```
