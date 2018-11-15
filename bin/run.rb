require_relative '../config/environment.rb'
student_cli = StudentCommandLineInterface.new
instructor_cli = InstructorCommanLineInterface.new

puts "Are you a student? (Yes or No):"
response = gets.chomp

if response == "yes"
  student_cli.gets_user_first_name
  student_cli.see_if_user_needs_help
  student_cli.display_instructors
  student_cli.get_available_instructor
else
  instructor_cli.get_user_first_name
  instructor_cli.is_user_generous
  instructor_cli.select_student_to_help
end
