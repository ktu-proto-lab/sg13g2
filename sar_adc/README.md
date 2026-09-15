## Setup

To launch xschem properly, first change into the project directory:

```bash
cd sg13g2/sar_adc/xschem
xschem
```

This ensures xschem picks up the local `xschemrc` in this folder, which sets `XSCHEM_LIBRARY_PATH` relative to this directory — required for symbol/schematic references (e.g. `blocks/comparator/comparator_hv.sym`) to resolve correctly.

If you launch xschem from elsewhere and get "symbol not found" errors, you're most likely missing this local `xschemrc`. Either `cd` into `sg13g2/sar_adc/xschem` first, or set:

```bash
export XSCHEM_RCFILE=/absolute/path/to/sg13g2/sar_adc/xschem/xschemrc
```
