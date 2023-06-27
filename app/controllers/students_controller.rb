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
        students = Student.all.order(grade: :desc)
        highest_grade_student = students.first
        render json: highest_grade_student
    end
end
