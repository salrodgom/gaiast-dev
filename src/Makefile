LINKFLAGS_FOR = -pedantic -O3 -march=native -fbounds-check
COMP_FOR = gfortran
GNUPLOT_SCRIPT = png.gp
check:
	GFORTRANVERSION = $(shell gfortran -dumpversion)
	GFORTRANVERSIONGTEQ4 := $(shell expr `gfortran -dumpversion` \== 4.9.2)
	ifeq "$(GFORTRANVERSIONGTEQ4)" "1"
		$(error Version de gfortran no valida: use 4.9.2 o superior )
	endif
install:
	gfortran ${LINKFLAGS_FOR} penf.F90 -c
	gfortran ${LINKFLAGS_FOR} befor64_pack_data_m.F90 -c
	gfortran ${LINKFLAGS_FOR} befor64.F90 -c
	gfortran ${LINKFLAGS_FOR} gaiast.f90 penf.o befor64_pack_data_m.o befor64.o -o gaiast
all:
	make install
	make execute
	make clean
	make plot
execute:
	time ./gaiast < input
plot:
	gnuplot ${GNUPLOT_SCRIPT} ; display iast.png
clean:;         @rm -f *.o *.mod gaiast isotermaN.dat
