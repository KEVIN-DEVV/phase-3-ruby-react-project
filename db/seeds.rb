puts "🌱 Seeding spices..."

Student.create(name:"Kevin Kimutai", email:"jamesm@gmail.com", phone:1839192734)
Student.create(name:"Joshua Igobe", email:"josh@gmail.com", phone:1949192734)
Student.create(name:"Nancy Umutoniwase", email:"Nnacy@gmail.com", phone:256849192734)
Student.create(name:"Mercy Omumu", email:"mercy@gmail.com", phone:1849192734)
Student.create(name:"Kidink Agoto", email:"kidink@gmail.com", phone:1849192734)
Student.create(name:"Ngomeli Frank", email:"jame@gmail.com", phone:1849192734)
Student.create(name:"Nelima Lucy", email:"Lucy@gmail.com", phone:1849192734)
Student.create(name:"Igbo Mawe", email:"mawe@gmail.com", phone:1849192734)

# Seed your database here
Lecturer.create(name:"Ibooo Messi", email:"jamm@gmail.com", phone:1849192734)
Lecturer.create(name:"Mash Awe", email:"jm@gmail.com", phone:1849192734)
Lecturer.create(name:"Ogamba J", email:"amesm@gmail.com", phone:1849192734)
Lecturer.create(name:"Muzi Owe", email:"jam@gmail.com", phone:1849192734)
Lecturer.create(name:"Otawa Umi", email:"umi@gmail.com", phone:1849192734)
Lecturer.create(name:"Owete IOria", email:"oria@gmail.com", phone:1849192734)
Lecturer.create(name:"Chris Oburu", email:"Oburu@gmail.com", phone:1849192734)
Lecturer.create(name:"Kish Owe", email:"owe@gmail.com", phone:1849192734)
Lecturer.create(name:"Josii Ote", email:"otyw@gmail.com", phone:1849192734)

course1=Course.create(name:"BioChem", code:101, lecturer_id:1, student_id:1)
course2=Course.create(name:"Math", code:102, lecturer_id:2, student_id:1)
course3=Course.create(name:"Chemistry", code:103, lecturer_id:1, student_id:2)
course4=Course.create(name:"Math", code:102, lecturer_id:2, student_id:2)
course5=Course.create(name:"BioChem", code:101, lecturer_id:3, student_id:3)
course6=Course.create(name:"Geo", code:104, lecturer_id:3, student_id:3)
course7=Course.create(name:"Eng", code:100, lecturer_id:4, student_id:4)
course8=Course.create(name:"Eng", code:100, lecturer_id:5, student_id:5)
course9=Course.create(name:"Physics", code:105, lecturer_id:6, student_id:4)





puts "✅ Done seeding!"