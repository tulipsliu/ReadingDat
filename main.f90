PROGRAM MAIN
IMPLICIT NONE
INTEGER, PARAMETER :: DP = SELECTED_REAL_KIND(P = 13, R = 307)
!----------------------------------------------------------------
INTEGER, PARAMETER :: obs = 150
REAL(DP) :: year(obs), income(obs), ind(obs), &
            age(obs), stdinc(obs), meaninc(obs)
INTEGER :: i
LOGICAL :: existfile

INQUIRE(file="tabout1.asc", exist= existfile )


IF(existfile)THEN
  open(unit=16, file="tabout.asc", action="read")
  DO i = 1, obs
    read(16,*) year(i), income(i), ind(i), &
       age(i), stdinc(i), meaninc(i)
  END DO
ELSE
  STOP'The data source file does not exist.'
ENDIF
             




print*,'incomes: ', income
write(*,'(f12.2)') age

PRINT*,'Hello, Tulpen Liu.'
PRINT*,'Jul 26, 2024.  Friday'


END PROGRAM MAIN
