class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades
    students = Student.all.order(grade: :desc)
         render json: students
    end

   def highest_grade
		# data = Student.all.order(grade: :desc).limit(1)
		students = Student.all.order(grade: :desc)[0]
		render(json: data)
	end
end
 