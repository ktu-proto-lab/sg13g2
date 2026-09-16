## Using Extracted Parasitics (PEX)

To use the extracted parasitics `.spice` file, include it in the ngspice model list:

```spice
.include ~/TOP_pex_fixed.spice
```

To match the extracted parasitics `.spice` file pins, add these lines to the comparator symbol (e.g. `x1`) properties:

```
type=primitive
format="@name @@VSS @@Clk_c @@Out_n @@V+ @@V- @@VDDH @@Out_p TOP"
```
