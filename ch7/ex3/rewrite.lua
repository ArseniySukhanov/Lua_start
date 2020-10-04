io.input("in.txt")
io.output("out.txt")
if arg[1] == 'byte' then
	t = io.read(1)
	while (t) do
		io.write(t)
		t = io.read(1)
	end
end
if arg[1] == 'line' then
	t = io.read('L')
	while (t) do
		io.write(t)
		t = io.read('L')
	end
end
if arg[1] == '8kb' then
	t = io.read(2^13)
	while (t) do
		io.write(t)
		t = io.read(2^13)
	end
end
if arg[1] == 'all' then
	t = io.read('a')
end

