math.randomseed(os.time())

function shufle(h)
	m = {}	
	for i=1,#h do
		m[i] = h[i]
	end

	for i=1,#h do
		h[i] = table.remove(m, math.random(#m))
	end
end

--[[list = {1,2,3,4,5,6,7,8}
--print(table.unpack(list))
shufle(list)
print(table.unpack(list))]]--
