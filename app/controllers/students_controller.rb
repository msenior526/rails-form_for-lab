class StudentsController < ApplicationController
    def new
        @student = Student.new
    end
    
    def show
        @student = Student.find_by_id(params[:id])
    end
    
    def edit 
        @student = Student.find(params[:id])
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def update
        @student = Student.find_by_id(params[:id])
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end
 
    private

    def student_params
        params.require(:student).permit!
    end
end