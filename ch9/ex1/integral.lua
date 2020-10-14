function integral(f, delta) -- integral constant is chosen in a way that integual in zero value is equal to 0
	delta = delta or 1e-4
	return function(x)
		local t = 0
		if (x>0) then
			for i = 1, x // delta do
				t = t + delta * f(i * delta)
			end
			return t
		else
			for i = 1, -x // delta do
				t = t - delta * f(-i * delta)
			end
			return t
		end
	end
end

--x = integral(math.sin)
--print(x(math.pi))  -- should be near to two
