-- in order to achieve a normal destribution, we will use the Box-Muller transform
math.randomseed(os.time()) --change of random seed

function normal_random()
	x1 = 1 - math.random()
	x2 = 1 - math.random()
	r = math.sqrt(-2*math.log(x1))*math.sin(2*math.pi*x2)
	return r
end

