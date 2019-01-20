def is_multiple_of_3_or_5(n)
	if n % 3 == 0 || n % 5 == 0
		return true
	end
	return false
end

def sum_of_3_and_5_multiples(n)
	i = 0
	sum = 0
	if n.class == String || n.class == Float || n <= 0
		return "Yo ! Je ne prends que les entiers naturels. TG"
	end
	while i < n
		if is_multiple_of_3_or_5(i) == true
			sum = sum + i
		end
		i = i + 1
	end
  return sum
end