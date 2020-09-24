function remove(s1, dis, of)
	s11 = string.sub(s1,0,dis - 1)
	s12 = string.sub(s1,dis+of, -1)
	return s11 .. s12
end
print(remove("Hello world!!!",7,4))
