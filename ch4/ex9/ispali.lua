function ispali(s)
	s=string.gsub(s,"%p",'')
	s=string.gsub(s," ",'')
	rev = ''
	l = utf8.len(s)
	for i = 1, l do
		rev = rev .. string.sub(s,utf8.offset(s,-i),utf8.offset(s,-i))
	end
	if rev == s then
		print(s)
		return true
	else
		print(s)
		return false
	end
end

print(ispali("step on no... pets"))
print(ispali("banana"))
