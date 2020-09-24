function ispali(s)
	if string.reverse(s) == s then
		print(s)
		return true
	else
		print(s)
		return false
	end
end

print(ispali("step on no pets"))
print(ispali("banana"))
