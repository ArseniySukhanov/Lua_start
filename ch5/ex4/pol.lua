function polyn(a, x)
	n =#a
	res = 0
	for i = 0, n do
		res = res * x + a[n-i]
	end
	return res
end

a = {[0] = 2, [1] = 3, [2] = 4}
print(polyn(a, 0))
print(polyn(a, 3))
