kaeland = Student.create(name:"Kaeland")
kwam = Student.create(name:"Kwam")
Student.create(name:"Will")
Student.create(name:"Cory")
Student.create(name:"Andy")
Student.create(name:"Paris")
Student.create(name:"Ed")


rob = Instructor.create(name:"Robby")
emily = Instructor.create(name:"Emily")
Instructor.create(name:"Brit")
Instructor.create(name:"Garry")
Instructor.create(name:"Ronny")
Instructor.create(name:"Tez")

meeting_1 = Meeting.create(instructor_id: rob.id, student_id: kwam.id)
meeting_2 = Meeting.create(instructor_id: emily.id, student_id: kwam.id)

# binding.pry