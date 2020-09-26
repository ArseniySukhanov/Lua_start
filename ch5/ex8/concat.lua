function concat(t)
	s = ''
	for i = 1, #t do
		s = s .. t[i]
	end
	return s
end
--[[h ={}
for i = 1, 100000 do
	table.insert(h,"HI ")
end
print(table.concat(h))
print(concat(h))]]--
-- performance strongly less on concat() then on table.concat()
