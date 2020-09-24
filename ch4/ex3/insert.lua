function insert(s1, dis, s2)
	s11 = string.sub(s1,0,dis - 1)
	s12 = string.sub(s1,dis, -1)
	return s11 .. s2 .. s12
end
print(insert("Hello world!!!",1,"Hi!"))
