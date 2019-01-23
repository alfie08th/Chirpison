class CoursesController < ApplicationController


  def index
    @courses = Course.all.reverse
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    @course = Course.find(params[:id])
    @cohort = Cohort.first
    @cohort.courses<<(@course)

  end

  def update
  end

  def destroy
  end
end
