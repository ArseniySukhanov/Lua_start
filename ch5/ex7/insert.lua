function toseq(t)
	h ={}
	for k, v in pairs(t) do
		table.insert(h, v)
	end
	return h
end

function insert(t, pos, ins)
	ins1 = toseq(ins)  -- it will be easier to work with sequence when with list
	size = #ins1

	h = {}
	for k, v in pairs(t) do
		if type(k) == "number" then
			table.insert(h, k)  -- we will need to move elements with numbers as keys with offset equal to ins sequence size, so we need to know which element's keys are numbers 
		end
	end
	for i = 1, #h do 
		for j = 1, i - 1 do
			if h[j] < h[j+1] then
			l = h[j]
			h[j] = h[j+1]
			h[j+1] = l
			end
		end
	end
	for j = 1, #h do
		if h[j] >= pos then
			t[h[j] + size] = t[h[j]]
		end
	end
	for i = 1, size do
		t[i - 1 + pos] = ins1[i]
	end
end
--test
--[[a = {1,2,3}
b = {4, 5, nil,6}
insert(a,2,b)
for i =1,#a do
	print(a[i])
end]]--


