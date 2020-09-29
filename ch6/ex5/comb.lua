function comb_arr(arr)
	ins_comb({},arr)
end

function ins_comb(arr_1,arr_2)
	local arr1 = {}
	local arr2 = {}
	local size = #arr_2
	if size == 0 then
		print(table.unpack(arr_1))
	else
		for j = 1, size do
			arr2[j]=arr_2[j]
		end
		for j = 1, #arr_1 do
			arr1[j]=arr_1[j]
		end
		for i = 1, size do
			table.insert (arr1,  table.remove(arr2,i))
			ins_comb(arr1,arr2)
			table.insert(arr2, i, table.remove(arr1, #arr1))
		end
	end
end

comb_arr({'a','b','c','d','e'})

