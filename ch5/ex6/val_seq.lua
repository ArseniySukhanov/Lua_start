function check(t)
	h ={}
	for k, v in pairs(t) do
		table.insert(h, k)
	end
	n =#h
	for i = 1, n do
		if type(h[i]) ~= "number" then
			return false
		else
			if h[i] > n or h[i] < 1 then
				return false
			end
		end
	end
	return true
end

--tests
--print(check({1,2,3,4,"afaf"}))
--print(check({["abc"] = 1,[1] = 12}))
--print(check({[1] = 34, [3] = 52}))
