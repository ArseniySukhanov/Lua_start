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



function addqueen (a, n, h)
	if n > N then		--all queens have been placed?
		printsolution(a)
		return false
	else 			--try to place n-th queen
		for c = 1, N do		-- maybe it could be more optimized but I don't know full sintaxis of language
			if isplaceok(a, n, c) then
				a[n] = c	--place n-th queen at column 'c'
				if not addqueen(a, n + 1, h) then
					return false
				end
			end
		end
	end
	return true
end

--run the program
addqueen({}, 1, true)


