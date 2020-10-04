if arg[1] then
	inpt = io.input(arg[1])
else
	print("Path to file is not initialized")
	os.exit()
end

current = inpt:seek("end") - 1
N = tonumber(arg[2]) or 1 -- number of last lines
for i = 1, N do
	current = current - 1
	inpt:seek("set", current)
	ch = io.read(1)
	while not (ch == '\n') do
		current = current - 1
		inpt:seek("set", current)
		ch = io.read(1)
	end
end
l = io.read('L')
while l do
	io.write(l)
	l = io.read('L')
end
