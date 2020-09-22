N = 8 --board size

-- check whether position (n,c) is free from attacks
function isplaceok (a, n, c)
	for i = 1, n - 1 do -- for each queen already placed
		if (a[i] == c) or		--same column?
		   (a[i] - i == c - n) or	--same diagonal?
		   (a[i] + i == c + n) then	--same diagonal?
		return false			--place can be attacked
		end
	end
	return true				--no attacks; place is OK
end

--print a board
function printsolution (a)
	for i = 1, N do				--for each row
		for j =  1, N do 		--and for each column
			-- write "X" or "-" plus a space
			io.write(a[i] == j and "X" or "_", " ")
		end
		io.write("\n")
	end
	io.write("\n")
end



function addqueen (a, n)
	h = true
	if n > N then	
		--all queens have been placed right?
		for i = 2, N do
		h = h and isplaceok(a, i, a[i])
		end
		if h then
			printsolution(a)
		end
	else 			-- place n-th queen
		for c = 1, N do
			for j = 1, n - 1 do
			h = a[j] ~= c and h
			end
				a[n] = c	-- place n-th queen at column 'c'
				addqueen(a, n + 1)
		end
	end
end

--run the program
addqueen({}, 1)


