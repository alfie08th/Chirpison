class InstructorsController < ApplicationController


  def index
    @instructors = Instructor.all.reverse
  end

  def new
  end

  def create
  end

  def show
    @instructor = Instructor.find(params[:id])
    # @course = Cohort.find(params[:id])
    @cohort = Cohort.first
    # @course = Course.first
    # @course.instructors<<(@instructor)
    @cohort.instructors<<(@instructor)
    # @cohort.cohorts<<(@course)
    @job_title = Faker::Job.title
    @location = Faker::Nation.capital_city #=> "Kathmandu"
    @instructor.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
