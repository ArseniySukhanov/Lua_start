function insert(s1, dis, of)
	if dis == 1 then
		s11 = ''
	else
		s11 = string.sub(s1,utf8.offset(s1,0),utf8.offset(s1, dis - 1))
	end
	s12 = string.sub(s1, utf8.offset(s1, dis+of), utf8.offset(s1,-1))
	return s11 .. s12
end
print(insert("Hello world!!!",7,4))
