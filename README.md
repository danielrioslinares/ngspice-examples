# ngspice-examples
ngSPICE examples with gnuplot figures and multiple analysis such as:
- AC analysis : label "ac"
- DC sweep analysis : label "dc"
- Pole-Zero analysis : label "pz"
- Transient analysis : label "tr"

In the entire project, Makefile is used for shortcut to the commands, and the typical make commands are:

- sch2net : convert the gschem schematic to netlist (only netlist, actually without running)
- net2cir_"analysis" : circuit generation with netlist and analysis.
- cir2dat_"analysis" : data output generation from the circuit.
- dat2plt_"analysis" : plot feature.
- all_"analysis" : makes all three last steps in one. With void <analysis> field, all the analysis are run
- clean : remove all trash.
- ngspice_"analysis" : ngspice in interactive mode.

The "analysis" field stands for all the different analysis done for the circuit.
