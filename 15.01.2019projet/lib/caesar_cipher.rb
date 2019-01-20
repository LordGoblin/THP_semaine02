def caesar_cipher(string, clé)
	i = 0
	while i < string.size
		
		if string[i].ord >= "A".ord && string[i].ord <= "Z".ord
			string[i] = (string[i].ord + (clé % 25)).chr
			if string[i].ord >= 'Z'.ord
				string[i] = (string[i].ord - 26).chr
			end
		elsif string[i].ord >= "a".ord && string[i].ord <= "z".ord
			string[i] = (string[i].ord + (clé % 25)).chr
			if string[i].ord >= 'z'.ord
				string[i] = (string[i].ord - 26).chr
			end
			elsif string[i].ord >= "0".ord && string[i].ord <= "9".ord
			string[i] = (string[i].ord + (clé % 10)).chr
			if string[i].ord >= '9'.ord
				string[i] = (string[i].ord - 10).chr
			end
		end
		i = i + 1
	end
	return string
end