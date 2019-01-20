require 'launchy'

def check_if_user_gave_input
  abort("recherche: missing input") if ARGV.empty?
end

def get_folder_name
	string = 0

ARGV.each do |rech|
	string = "#{string}" + rech + "+"
end
	return string[1..-2]
end

def recherche(lien)
	Launchy.open("https://www.google.com/search?q=#{lien}")
	print lien
end

def perform
	check_if_user_gave_input
	recherche(get_folder_name)
end

perform