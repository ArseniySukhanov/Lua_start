function print_con_volume(h,a)
	v = math.tan(math.rad(a))^2*h^3*math.pi/3
	print("\nVolume: ",v,"\n")
end

print("enter a height")			--gathering a data
h = io.read("*n")
print("\nenter an angle in degrees")
a = io.read("*n")
print_con_volume(h, a)
