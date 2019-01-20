def day_trader(array)
	teste = [array[0],0]
	achat_vente = [0,0]
	a = [0,0]
	i = 0
	j = 0

	(array.size).times do
		if teste[0] > array[i]
			teste[0] = array[i]
			j = i
			(array.size - i).times do
				if array[j] > teste[0] && array[j] > teste[1]
					teste[1] = array[j]
					if (achat_vente[1] - achat_vente[0]) < (teste[1] - teste[0])
						achat_vente[0] = teste[0]
						achat_vente[1] = teste[1]
						a[0] = i
						a[1] = j
					end
				end
				j = j + 1
			end
			teste[1] = 0
			j = 0
		end
		teste[0] = array[0] + array[1]
		i = i + 1
	end
	return a
end

day_trader([2, 63, 3, 15, 37, 30, 67, 55, 58])