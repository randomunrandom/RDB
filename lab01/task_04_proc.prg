use lab01_tabl01 new
//select lab01_tabl01

go top
do while !eof()
	? id, name
	if sex
	?? 'male '
	else
	?? 'female '
	endif
	?? bday, pay
	skip
enddo
?
?
?
go top
do while !eof()
	if sex
		? id, name
		?? 'male '
		?? bday, pay
	endif
	skip
enddo
?
?
?
go top
do while !eof()
	if Year(Date()) - Year(bday) > 20
		? id, name
		?? 'male '
		?? bday, pay
	endif
	skip
enddo
