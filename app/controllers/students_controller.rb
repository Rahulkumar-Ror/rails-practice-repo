class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(input_params)
    if @student.save
      redirect_to students_path
      flash[:notice] = "Successfully created"
    else
      render :new
      flash[:error] = "something went wrong"
    end
  end

  def show
    @student = Student.find_by(params[:id])
  end

  def destroy
    @student = Student.find_by(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def input_params
    params.require(:student).permit(:student_name, :email, :dob, :phone, :student_pic, :student_resume)
  end
end
