function newpoly(a)
	return function (x)
		local n =#a
		local res = 0
		for i = 0, n-1 do
			res = res * x + a[n-i]
		end
		return res
	end
end

--f = newpoly({3,0,1})
--print(f(0))
--print(f(5))
