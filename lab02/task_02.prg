procedure Main()
    set date Italian
    ? 'started working'
    create_db()
    /*? '1'
    set filter to sex=.t.
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '2'
    set filter to ((sex=.t.) .and. (year(date())-year(bday) >= 20) .and. (month(date()) >= month(bday)) .and. (day(date()) > day(bday)))
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '3'
    set filter to (month(bday) = 10)
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '4'
    set filter to (pay < 1000)
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo*/
    ? '5'
    set filter to ((month(bday) >= 5) .and. (month(bday) <= 10))
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '6'
    set filter to ((month(bday) = 5) .or. (month(bday) = 10))
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    // ? '1'
    // set softseek on
    // index on sex to index_sex
    // go top
    // seek .t.
    // do while ((!eof()) .and. (sex))
    // do while ((!eof()))
        // ? name
        // if sex
        // ?? 'male '
        // else
        // ?? 'female '
        // endif
        // ?? bday, pay
        // skip
    // enddo
    // ? '2'
    // index on if(sex, '1' ,'0')+str(year(bday), 4, 0) to index_sex_20years
    // go top
    // seek year(date()) - 20
    // do while ((!eof()) .and. (sex))
    // do while !eof()
        // ? name
        // if sex
        // ?? 'male '
        // else
        // ?? 'female '
        // endif
        // ?? bday, pay
        // skip
    // enddo
    /*? '3'
    set filter to (month(bday) = 10)
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '4'
    set filter to (pay < 1000)
    go top
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo*/
    set filter to .t.
    ? '5'
    // set softseek on
    go top
    index on month(bday) to index_bday
    seek 5
    do while !eof() .and. month(bday) <= 10
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
    ? '6'
    index on if(month(bday) = 5, '1', '0') + if(month(bday) = 10, '1', '0') to index_bday_6
    go top
    seek 1
    do while !eof()
        ? name
        if sex
        ?? 'male '
        else
        ?? 'female '
        endif
        ?? bday, pay
        skip
    enddo
return

procedure create_db()
    local struct := {;
        {'name', 'C', 20, 0},;
        {'sex', 'L', 1, 0},;
        {'bday', 'D', 8, 0},;
        {'pay', 'N', 20, 2};
    }

    dbcreate('lab02_tabl02', struct)

    use lab02_tabl02 new
    append blank
    replace name with 'Kireev D.A.', sex with .t., bday with ctod('23-03-2000'), pay with 2900
    append blank
    replace name with 'Ageeva A.S.', sex with .f., bday with ctod('01-01-2000'), pay with 2900
    append blank
    replace name with 'Ivanov I.I.', sex with .t., bday with ctod('03-01-2000'), pay with 2900
    append blank
    replace name with 'Sergeef D.T.', sex with .t., bday with ctod('05-05-1999'), pay with 1900
    append blank
    replace name with 'Abu Maxadi A.M.', sex with .t., bday with ctod('05-01-2000'), pay with 2900
    append blank
    replace name with 'Alam Faysal', sex with .t., bday with ctod('12-03-2000'), pay with 1900
    append blank
    replace name with 'Aronova U.V.', sex with .f., bday with ctod('24-04-2001'), pay with 25000
    append blank
    replace name with 'Faraonovna A.S.', sex with .f., bday with ctod('21-02-2000'), pay with 2600
    append blank
    replace name with 'Mushkarina N.M.', sex with .f., bday with ctod('03-10-2000'), pay with 15000
    append blank
    replace name with 'Blohin E.I.', sex with .t., bday with ctod('01-09-1999'), pay with 30000
    append blank
    replace name with 'Gonsales L.', sex with .t., bday with ctod('02-05-2000'), pay with 0
    append blank
    replace name with 'Melnikova S.M.', sex with .f., bday with ctod('20-03-2000'), pay with 0
    append blank
    replace name with 'Kortashov S.G.', sex with .t., bday with ctod('21-04-1999'), pay with 1900
    append blank
    replace name with 'Andreeva N.D.', sex with .f., bday with ctod('04-12-1999'), pay with 0
    append blank
    replace name with 'Mihaylov D.A.', sex with .t., bday with ctod('06-3-2000'), pay with 1900
    append blank
    replace name with 'Juleva I.S.', sex with .f., bday with ctod('03-01-1998'), pay with 2900
    append blank
    replace name with 'Smirnova A.S.', sex with .f., bday with ctod('04-01-2000'), pay with 15000
    append blank
    replace name with 'Murza D.S.', sex with .t., bday with ctod('03-06-1999'), pay with 1900
    append blank
    replace name with 'Nikolaev A.S.', sex with .t., bday with ctod('01-05-2000'), pay with 1000
return
