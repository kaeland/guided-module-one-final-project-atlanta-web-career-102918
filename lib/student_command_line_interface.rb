class StudentCommandLineInterface
  def initialize()
  end
   
  def gets_user_first_name
    puts "What’s your first name?..."
    response = gets.chomp
  end

  def see_if_user_needs_help
    puts "What do you need help with?"
    response = gets.chomp
    puts "Sweet, let's see if we can get someone to help you..."
    sleep(2.5)
    # respon
  end

  def display_instructors
    puts " Ok here are the available instructors..."
    Instructor.all.each do |instructor|
      puts "#{instructor.name}"
    end
  end

  def get_available_instructor
    puts "Select available instructor from the list…"
    response = gets.chomp 
    sleep(1)
    puts "Great, an instructor will be in touch with you soon!"
  end
end
