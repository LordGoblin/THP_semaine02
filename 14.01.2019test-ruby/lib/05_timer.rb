def time_string(a)
	timer = [0,0,0]
	i = 0
	o = "00:00:00"
	while i < a
		timer[2] = timer[2] + 1
		i = i + 1
		if timer[2] == 60
			timer[1] = timer[1] + 1
			timer[2] = 0
			if timer[1] == 60
				timer[0] = timer[0] + 1
				timer[1] = 0
			end
		end
	end
	if timer[0] < 10
		o[0..-7] ="0#{timer[0]}"
	else 
		o[0..-7] ="#{timer[0]}"
	end
	if timer[1] < 10
		o[3..-4] ="0#{timer[1]}"
	else 
		o[3..-4] ="#{timer[1]}"
	end
	if timer[2] < 10
		o[6..-1] ="0#{timer[2]}"
	else 
		o[6..-1] ="#{timer[2]}"
	end
	return o
end
