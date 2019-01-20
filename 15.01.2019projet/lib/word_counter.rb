def dictionary

	dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
	return dictionary
end

def word_counter(a,dico)
	hachier = {}
	i = 0
	a = a.scan(/\w+/)
	dico.each do |c|
		a.each do |d|
			if d.downcase.include?(c) == true
				i = i + 1
				hachier[c] = i
			end
		end
		i = 0
	end
	return hachier
end


print word_counter("Howdy partner, sit down! How's it going?", dictionary)