program bin2real
 use penf
 use, intrinsic :: ISO_FORTRAN_ENV, only : stdout=>OUTPUT_UNIT
 implicit none
 integer                     :: i
 character(len=32)           :: genotype  = '00111111100000000000000000000000'
 real                        :: phenotype = 45863453.86736546
 call penf_init
 write(6,'(a32,1x,a,1x,e23.15e3)') genotype,'and',phenotype
 !print "("//FR4P//")",bcton(bstr=genotype,kin='1._R4P')
 print "(A)",bstr(phenotype)
 stop 
end program bin2real
