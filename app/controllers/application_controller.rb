class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

##CRUD Operations for the Students
  get '/students' do
    students = Student.all.includes(:courses)
    students.to_json(include: :courses)  
  end
  get '/students/:id' do
    Student.find(params[:id]).to_json(include: :courses)
  rescue =>exception
   {error: "Could not find the student with that ID"}.to_json
  end
  patch '/students/:id' do
    student=Student.find(params[:id])
    student.update(params)
    {message:"Student details has been updated successfully"}.to_json
  end
  delete '/students/:id' do
    Student.find(params[:id]).destroy
    {message:"Student has been deleted successfully"}.to_json
  rescue =>exception
    {error: "Could not find the student with that ID"}.to_json
  end
  post '/students' do
    student=Student.create(params)
    student.to_json
  end



##CRUD Operations for the Lecturers
  get '/lecturers' do
    Lecturer.all.to_json(include: :courses)
  end
  get '/lecturers/:id' do
    Lecturer.find(params[:id]).to_json(include: :courses)
  rescue =>exception
    {error: "Could not find the lecturer with that ID"}.to_json
  end

  delete '/lecturers/:id' do
    Lecturer.find(params[:id]).destroy
    {message:"Lecturer has been deleted successfully"}.to_json
  rescue =>exception
    {error: "Could not find the lecturer with that ID"}.to_json
  end
  patch '/lecturers/:id' do
    lecturer=Lecturer.find(params[:id])
    lecturer.update(params)
    {message:"Lecturer details has been updated successfully"}.to_json

  end
  post '/lecturers' do
    lecturer=Lecturer.create(params)
    lecturer.to_json
  end

  ##Courses CRUD
  post '/courses' do
    course=Course.create(params)
    course.to_json
  end
  get '/courses' do
    Course.all.to_json
  end
end
