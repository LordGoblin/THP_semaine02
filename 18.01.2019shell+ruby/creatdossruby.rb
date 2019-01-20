def check_if_user_gave_input
  abort("rubydossier: missing input") if ARGV.empty?
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(name)
  Dir.mkdir(name)
end

def gemfile(name)
file = File.open("Gemfile", "a")
file.puts("source 'https://rubygems.org'
gem 'pry'
gem 'rspec'
gem 'rubocop', '~> 0.57.2'
gem 'dotenv'")
file.close
end

def create_folder_lib_rspec(name)
Dir.mkdir("lib")
system("rspec --init")
system("git init")
file = File.open(".env", "a")
file.close
file = File.open(".gitignore", "a")
file.puts(".env")
file.close
file = File.open("README.md", "a")
file.close
end

def perform
	check_if_user_gave_input
	create_folder(get_folder_name)
	Dir.chdir"#{get_folder_name}"
	system("pwd")
	gemfile(get_folder_name)
	create_folder_lib_rspec(get_folder_name)
end

perform