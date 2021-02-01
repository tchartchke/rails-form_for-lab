class SchoolClassesController < ApplicationController
  def new
    @class = SchoolClass.new
    render 'form'
  end

  def create
    @class = SchoolClass.create(model_params(:school_class, :room_number, :title))
    redirect_to school_class_path(@class)
  end

  def show
    @class = SchoolClass.find(params[:id])
  end

  def edit
    @class = SchoolClass.find(params[:id])
    render 'form'
  end

  def update
    @class = SchoolClass.find(params[:id])
    @class.update(model_params(:school_class, :room_number, :title))
    redirect_to school_class_path(@class)
  end
end
