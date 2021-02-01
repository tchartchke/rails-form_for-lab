class StudentsController < ApplicationController
  def new
    @student = Student.new
    render 'form'
  end

  def create
    @student = Student.create(model_params(:student, :first_name, :last_name))
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
    render 'form'
  end

  def update
    @student = Student.find(params[:id])
    @student.update(model_params(:student, :first_name, :last_name))
    redirect_to student_path(@student)
  end
end
