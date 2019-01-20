def echo(a)
	return a
end

def shout(a)
	return a.upcase
end

def repeat(a,*b)
	if b.size == 0
		return "#{a} " + "#{a}"
	else
		return ("#{a} " * b[0])[0..-2]
	end
end

def start_of_word(a,b)
	return a[0..b-1]
end

def first_word(a)
	b = a.index(' ')
	a = a[0..b-1]
	return a
end

def titleize(a)
	b = a.scan(/\w+/)
	a = ""
	c = b.size
	b = b.each{|x|x[0]=x[0].upcase}
	if b.size > 2
		b[c/2][0] = b[c/2][0].downcase
	end
	b.each{|i| a = a + i + ' '}
	return a[0..-2]
end