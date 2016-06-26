class StudentsController < ApplicationController
  before_action :get_student, only: [:edit, :update, :destroy, :show]
  def get_student
    @student = Student.find(params[:id])
  end

  def index #list all students
    @students = Student.all
  end

  def edit #show an edit format
  end

  def new #new student form
    @student = Student.new
  end

  def create
    if @student = Student.create(params.require(:student).permit(:name, :weight, :height,
                                                                :color, :gpa))
      redirect_to students_path
    else
      redirect_to :back
    end
  end

  def show #show a single student
    respond_to do |format|
      format.html
      format.json { render json: @student }
      format.xml  { render xml: @student  }
  end

  def update
  end

  def destroy
  end

  #prevents ForbiddenAttribute error when creating new student
  private
    def student_params

    end

end
end
