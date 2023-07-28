class StudentsController < ApplicationController

    def index
        @student = Student.all
    end

    def show
        @student = Student.find(params[:id])
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_parms)
        if @student.save
            redirect_to students_path
        else
            render new
        end
    end

    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_parms)
            redirect_to students_path
        else
            render new
        end

    end

    private

    def student_parms
        params.require(:student).permit(:first_name, :last_name, :email, :age, :semester)
    end
end