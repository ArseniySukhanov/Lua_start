function outfirst(...)
	h = {...}
	table.remove(h,1)
	return table.unpack(h)
end

--print(outfirst(1,2,3,4,5))
