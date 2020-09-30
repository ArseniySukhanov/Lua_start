if arg[1] then
	io.input(arg[1])
	if arg[2] then
		io.output(arg[2])
	end
end
lines = {}
for line in io.lines() do 
	lines[#lines + 1] = line
end
--io.write("\n\n\n") --for tests without args
table.sort(lines)
for _, l in ipairs(lines) do 
	io.write(l,"\n")
end
