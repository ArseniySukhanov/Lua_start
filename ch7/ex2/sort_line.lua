if arg[1] then
	if arg[2] then
		if io.open(arg[2],"r") then
			io.write('Are you sure that you want to rewrite the file "',arg[2],'" (y/n): ')
			if string.sub(io.read("l"),1,1) == 'y' then
				io.output(arg[2])
			end
		else
			io.output(arg[2])
		end
	end
	io.input(arg[1])
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
