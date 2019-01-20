
def translate(a)
  voyel = ["a","e","i","o","u","y"]
  cons  = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Z"]
  cons2 = ["QU",]
  cons3 = ["SCH","SQU"]
  selec = ""
  final = []

  b = a.scan(/\w+/)
  b.each do |word|

    if voyel.include?(word[0])
      word = word+"ay"
      final << word


    elsif cons.include?(word[0].upcase) && cons.include?(word[1].upcase) && cons.include?(word[2].upcase)
      selec = word[0]+word[1]+word[2]
      word = word.delete(selec)
      word = word+selec+"ay"
      final << word


    elsif cons3.include?(word[0].upcase+word[1].upcase+word[2].upcase)
      selec = word[0]+word[1]+word[2]
      word = word.delete(selec)
      word = word+selec+"ay"
      final << word


    elsif cons2.include?(word[0].upcase.+(word[1].upcase))
      selec = word[0]+word[1]
      word = word.delete(selec)
      word = word+selec+"ay"
      final << word


    elsif cons.include?(word[0].upcase) && cons.include?(word[1].upcase)
      selec = word[0]+word[1]
      word = word.delete(selec)
      word = word+selec+"ay"
      final << word


    elsif cons.include?(word[0].upcase)
      selec = word[0]
      word = word.delete(selec)
      word = word+(selec)+("ay")
      final << word
    else puts "je sais po"
    end
  end
  return final.join(" ")
end