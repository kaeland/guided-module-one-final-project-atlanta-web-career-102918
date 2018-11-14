require_relative '../config/environment.rb'
new_cli = StudentCommandLineInterface.new

puts "Are you a student? (Yes or No):"
response = gets.chomp

if response == "yes"
  new_cli.gets_user_first_name
  new_cli.see_if_user_needs_help
  new_cli.display_instructors
else
  "bye"
end
