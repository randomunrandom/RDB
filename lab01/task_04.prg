set date Italian

struct = {;
	{'id', 'N', 100, 0},;
	{'name', 'C', 100, 0},;
	{'sex', 'L', 1, 0},;
	{'bday', 'D', 8, 0},;
	{'pay', 'N', 20, 10};
}

dbcreate('lab01_tabl01', struct)
id_int = 1

use lab01_tabl01 new
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Kireev D.A.', sex with .t., bday with ctod('23-03-2000'), pay with 2900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Ageeva A.S.', sex with .f., bday with ctod('01-01-2000'), pay with 2900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Ivanov I.I.', sex with .t., bday with ctod('03-01-2000'), pay with 2900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Sergeef D.T.', sex with .t., bday with ctod('05-05-1999'), pay with 1900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Abu Maxadi A.M.', sex with .t., bday with ctod('05-01-2000'), pay with 2900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Alam Faysal', sex with .t., bday with ctod('12-03-2000'), pay with 1900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Aronova U.V.', sex with .f., bday with ctod('24-04-2001'), pay with 25000
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Faraonovna A.S.', sex with .f., bday with ctod('21-02-2000'), pay with 2600
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Mushkarina N.M.', sex with .f., bday with ctod('03-10-2000'), pay with 15000
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Blohin E.I.', sex with .t., bday with ctod('01-09-1999'), pay with 30000
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Gonsales L.', sex with .t., bday with ctod('02-05-2000'), pay with 0
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Melnikova S.M.', sex with .f., bday with ctod('20-03-2000'), pay with 0
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Kortashov S.G.', sex with .t., bday with ctod('21-04-1999'), pay with 1900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Andreeva N.D.', sex with .f., bday with ctod('04-12-1999'), pay with 0
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Mihaylov D.A.', sex with .t., bday with ctod('06-3-2000'), pay with 1900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Juleva I.S.', sex with .f., bday with ctod('03-01-1998'), pay with 2900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Smirnova A.S.', sex with .f., bday with ctod('04-01-2000'), pay with 15000
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Murza D.S.', sex with .t., bday with ctod('03-02-1999'), pay with 1900
append blank
replace id with id_int
id_int = id_int + 1
replace name with 'Nikolaev A.S.', sex with .t., bday with ctod('01-05-2000'), pay with 1000
