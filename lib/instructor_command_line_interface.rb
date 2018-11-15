class InstructorCommanLineInterface
  
  def initialize()
  end

  def get_user_first_name
    puts "What's your first name?"
    response = gets.chomp
  end  

  def is_user_generous
    puts "Are you feeling generous?"
    response = gets.chomp
    #store boolean in instructor table
    if response != "generous"
      puts "Ok thanks anyways, bye"
    else 
      puts "Here is who needs help and with what…"
      #display students
    end  
  end

  def select_student_to_help
    puts "Who would you like to help"
    response = gets.chomp 
    #select which student teacher wants to help 
    puts "Great! Thanks for helping!"
  end 

end