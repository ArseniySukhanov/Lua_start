function outfirst(...)
	h = {...}
	table.remove(h)
	return table.unpack(h)
end

--print(outfirst(1,2,3,4,5))
