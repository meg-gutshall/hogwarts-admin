class TeachersController < ApplicationController
  def index
    if params[:house_id]
      @house = House.find(params[:house_id])
      @teachers = @house.teachers
    else
      @teachers = Teacher.all
    end
  end

  def show
    @teacher = Teacher.find(params[:id])
  end
end
