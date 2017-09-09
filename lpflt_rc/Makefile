

# Directories
mod = ./models/
net = ./netlists/
sch = ./schematics/
sim = ./simulations/
plt = ./plots/
dat = ./data/
ckt = ./circuits/



# Convert gschem schematic to netlist
sch2net:
	gnetlist -g spice-sdb -o $(net)ac.net $(sch)ac.sch
	gnetlist -g spice-sdb -o $(net)dc.net $(sch)dc.sch
	gnetlist -g spice-sdb -o $(net)pz.net $(sch)pz.sch
	gnetlist -g spice-sdb -o $(net)tr.net $(sch)tr.sch

# Complete cir generation
net2cir_ac net2cir_dc net2cir_pz net2cir_tr:
	# Netlist avoiding the last line (.end)
	cat $(net)$(subst net2cir_,,$@).net | head -n -1 > $(ckt)$(subst net2cir_,,$@).cir
	# Simulation directive
	cat $(sim)$(subst net2cir_,,$@).sim >> $(ckt)$(subst net2cir_,,$@).cir
	# End of file
	echo ".END" >> $(ckt)$(subst net2cir_,,$@).cir

# SPICE batch simulation mode
cir2dat_ac cir2dat_dc cir2dat_pz cir2dat_tr:
	# Run the simulation (computation mode)
	ngspice -b $(ckt)$(subst cir2dat_,,$@).cir

# SPICE interactive simulation mode
ngspice_ac ngspice_dc ngspice_pz ngspice_tr:
	ngspice $(ckt)$(subst cir2int_,,$@).cir

# Plot figures with gnuplot
dat2plt_ac dat2plt_dc dat2plt_pz dat2plt_tr:
	gnuplot $(plt)$(subst dat2plt_,,$@).pg
	cat ../plot_header.tex plt.tex >> tmp.tex
	echo "\end{document}" >> tmp.tex
	pdflatex tmp.tex
	pdfcrop tmp.pdf --margins '5 5 5 5'
	mv tmp-crop.pdf $(plt)$(subst dat2plt_,,$@).pdf
	rm *.aux *.log *.eps *.tex *converted-to.pdf tmp.pdf

# Run all steps
all_ac all_dc all_pz all_tr:
	make net2cir_$(subst all_,,$@); make cir2dat_$(subst all_,,$@); make dat2plt_$(subst all_,,$@);

# Run all
all_:
	make all_ac ; make all_dc ; make all_pz ; make all_tr

# Clean files
clean:
	rm -rf $(ckt)*.cir $(dat)*.data $(plt)*.pdf

#
