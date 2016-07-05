class StudentsController < ApplicationController
  before_action :get_student, only: [:edit, :update, :destroy, :show]
  def get_student
    @student = Student.find(params[:id])
  end

  def index #list all students
    @students = Student.all
  end

  def edit #show an edit format
    @color = @student.color
  end

  def new #new student form
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
      if @student.save
        redirect_to students_path
      else
        redirect_to(new_student_path, alert: "Invalid properties, are there any blanks?")
      end
    end

  def show #show a single student
    respond_to do |format|
      format.html
      format.json { render json: @student }
      format.xml  { render xml: @student  }
    end
  end

  def update
    if @student.update_attributes(params.require(:student).permit(
      :name, :weight, :height, :color, :gpa))
      redirect_to(students_path, notice: "Student successfully updated")
    else
      redirect_to(edit_student_path, alert: "Invalid properties, are there any blanks?")
    end
  end

  def destroy
    if @student.destroy
      redirect_to(students_path, notice: "Student successfully destroyed")
    else
      redirect_to(students_path, alert: "Failed to destroy student")
    end
  end

  private
  def student_params
    params.require(:student).permit(
      :name, :weight, :height, :color, :gpa)
  end
end
