procedure Main()
    set date Italian
    set softseek on
    ? 'started working'
    create_group_db()
    ? 'created group db'
    index on name to 'groupdb_name'
    create_stud_db()
    ? 'created stud db'
    set relation to group_abr into lab03_groups
    ?
    ? 'all'
    ?
    go top
    do while !eof()
        print_line_adv()
        skip
    enddo
    ?
    ? 'only born 1999'
    ?
    set filter to year(bday) = 1999
    go top
    do while !eof()
        print_line_adv()
        skip
    enddo
    ?
    ? 'only in math'
    ?
    set filter to ((lab03_groups -> spec)='Math')
    go top
    do while !eof()
        print_line_adv()
        skip
    enddo

    return

procedure print_line_adv()
    ? name
    if sex
    ?? 'male   '
    else
    ?? 'female '
    endif
    ?? bday, pay, lab03_groups -> spec
    return

procedure create_stud_db()
    local struct := {;
        {'name', 'C', 20, 0},;
        {'sex', 'L', 1, 0},;
        {'bday', 'D', 8, 0},;
        {'pay', 'N', 20, 2},;
        {'group_abr', 'C', 11, 0};
    }

    dbcreate('lab03_studs', struct)

    use lab03_studs new
    append blank
    replace name with 'Kireev D.A.', sex with .t., bday with ctod('23-03-2000'), pay with 2900, group_abr with 'NFI'
    append blank
    replace name with 'Ageeva A.S.', sex with .f., bday with ctod('01-01-2000'), pay with 2900, group_abr with 'NFI'
    append blank
    replace name with 'Ivanov I.I.', sex with .t., bday with ctod('03-01-2000'), pay with 2900, group_abr with 'NFZ'
    append blank
    replace name with 'Sergeef D.T.', sex with .t., bday with ctod('05-05-1999'), pay with 1900, group_abr with 'NHT'
    append blank
    replace name with 'Abu Maxadi A.M.', sex with .t., bday with ctod('05-01-2000'), pay with 2900, group_abr with 'NMT'
    append blank
    replace name with 'Alam Faysal', sex with .t., bday with ctod('12-03-2000'), pay with 1900, group_abr with 'NHT'
    append blank
    replace name with 'Aronova U.V.', sex with .f., bday with ctod('24-04-2001'), pay with 25000, group_abr with 'NFI'
    append blank
    replace name with 'Faraonovna A.S.', sex with .f., bday with ctod('21-02-2000'), pay with 2600, group_abr with 'NFZ'
    append blank
    replace name with 'Mushkarina N.M.', sex with .f., bday with ctod('03-10-2000'), pay with 15000, group_abr with 'NFI'
    append blank
    replace name with 'Blohin E.I.', sex with .t., bday with ctod('01-09-1999'), pay with 30000, group_abr with 'NHT'
    append blank
    replace name with 'Gonsales L.', sex with .t., bday with ctod('02-05-2000'), pay with 0, group_abr with 'NFZ'
    append blank
    replace name with 'Melnikova S.M.', sex with .f., bday with ctod('20-03-2000'), pay with 0, group_abr with 'NMT'
    append blank
    replace name with 'Kortashov S.G.', sex with .t., bday with ctod('21-04-1999'), pay with 1900, group_abr with 'NPM'
    append blank
    replace name with 'Andreeva N.D.', sex with .f., bday with ctod('04-12-1999'), pay with 0, group_abr with 'NFZ'
    append blank
    replace name with 'Mihaylov D.A.', sex with .t., bday with ctod('06-3-2000'), pay with 1900, group_abr with 'NHT'
    append blank
    replace name with 'Juleva I.S.', sex with .f., bday with ctod('03-01-1998'), pay with 2900, group_abr with 'NPM'
    append blank
    replace name with 'Smirnova A.S.', sex with .f., bday with ctod('04-01-2000'), pay with 15000, group_abr with 'NFZ'
    append blank
    replace name with 'Murza D.S.', sex with .t., bday with ctod('03-02-1999'), pay with 1900, group_abr with 'NMT'
    append blank
    replace name with 'Nikolaev A.S.', sex with .t., bday with ctod('01-05-2000'), pay with 1000, group_abr with 'NFI'
return

procedure create_group_db()
    local struct := {;
        {'name', 'C', 11, 0},;
        {'spec', 'C', 10, 0};
    }

    dbcreate('lab03_groups', struct)

    use lab03_groups new
    append blank
    append blank
    replace name with 'NFI', spec with 'IT'
    append blank
    replace name with 'NMT', spec with 'Math'
    append blank
    replace name with 'NPM', spec with 'Math'
    append blank
    replace name with 'NFZ', spec with 'Physics'
    append blank
    replace name with 'NHT', spec with 'Chemistry'
return
