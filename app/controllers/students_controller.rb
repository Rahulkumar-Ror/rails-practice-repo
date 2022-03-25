class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def edit
    @student = Student.find(params[:id])
  end

  def purge_avatar
    @student = Student.find(params[:id])
    @student.student_pic.purge
    redirect_back fallback_location: root_path, notice: "success"
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

  def update
    @student = Student.find(params[:id])
    @student.update(input_params)
    if @student.valid?
      redirect_to students_path
      flash[:notice] = "Successfully updated"
    else
      render :new
      flash[:error] = "something went wrong"
    end
  end

  def show
    @student = Student.find(params[:id])
  end

  def destroy
    @student = Student.find_by(params[:id])
    @student.destroy
    redirect_to students_path
  end

  private

  def input_params
    params.require(:student).permit(:student_name, :email, :dob, :phone, :student_pic, :student_resume, images: [])
  end
end
