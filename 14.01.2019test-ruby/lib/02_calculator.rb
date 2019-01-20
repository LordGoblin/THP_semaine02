def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(a)
	i = 0
	b = 0
	while i < a.size
		b = b + a[i]
		i = i + 1
	end
	return b
end

def multiply(a,b)
	a = a * b
	return a
end

def power(a,b)
	i = 0
	while i < b
		a = a * b
		i = i + 1
	end
	return a
end

def factorial(a)
	if a == 0 || a == 1
		return 1
	end
	i = a - 1
	while i != 0
		a = a * i
		i = i - 1
	end
	return a
end