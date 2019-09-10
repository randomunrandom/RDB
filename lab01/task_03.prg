procedure main()
	local a := 0
	local i := 0
	local j := 0
	local k := 0
	
	for i = 0 to 10
		?
		a := 1
		for k = (10 - i) to 1 step (-1)
			?? '  ' 
		next
		?? str(a, 4)
		for j = 1 to i
			a = a*(i-j+1)/j
			a = Int(a)
			?? str(a, 4)
		next
	next
return
