v 20130925 2
C 43600 47400 1 0 0 resistor-1.sym
{
T 43900 47800 5 10 0 0 0 0 1
device=RESISTOR
T 43800 47900 5 10 1 1 0 0 1
refdes=R1
T 43800 47700 5 10 1 1 0 0 1
value=1k
}
C 45300 47100 1 270 0 capacitor-1.sym
{
T 46000 46900 5 10 0 0 270 0 1
device=CAPACITOR
T 45800 46700 5 10 1 1 0 0 1
refdes=C1
T 46200 46900 5 10 0 0 270 0 1
symversion=0.1
T 45800 46500 5 10 1 1 0 0 1
value=1u
}
N 43600 47500 42500 47500 4
N 42500 47500 42500 47200 4
{
T 42300 47600 5 10 1 1 0 0 1
netname=Ni
}
N 44500 47500 45500 47500 4
N 45500 47500 45500 47100 4
{
T 45600 47600 5 10 1 1 0 0 1
netname=No
}
C 42400 45700 1 0 0 gnd-1.sym
C 45400 45700 1 0 0 gnd-1.sym
N 45500 46200 45500 46000 4
C 42200 46000 1 0 0 vac-1.sym
{
T 42900 46650 5 10 1 1 0 0 1
refdes=Vi
T 42900 46850 5 10 0 0 0 0 1
device=vac
T 42900 47050 5 10 0 0 0 0 1
footprint=none
T 42900 46450 5 10 1 1 0 0 1
value=dc 0 ac 1
}
