def who_is_bigger(a,b,c)
	if a == nil || b == nil || c == nil
		return "nil detected"
	elsif a > b && a > c
		return "a is bigger"
	elsif b > a && b > c
		return "b is bigger"
	elsif c > a && c > b
		return "c is bigger"			
	end
end

def reverse_upcase_noLTA(a)
	return ((a.delete"LTAlta").reverse).upcase
end

def array_42(a)
	return (a = (a.drop_while{|i| i != 42})[0]).equal? 42
end

def magic_array(a)
			#bonus : 52 chars??
	return a.flatten.delete_if{|x|x%3==0}.map{|a|2*a}.uniq.sort
end