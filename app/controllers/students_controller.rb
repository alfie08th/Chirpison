class StudentsController < ApplicationController

# images = ['https://tse1.mm.bing.net/th?id=OIP.dGcKWEbX6A9GH5dlaQSQ6AHaFU&pid=15.1&P=0&w=219&h=158']

  def index
    @students = Student.all.reverse
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    @student = Student.find(params[:id])
    @title = "student"
    @location = Faker::Nation.capital_city #=> "Kathmandu"
    @cohort = Cohort.first
    @points = Faker::Number.between(100, 500)
    @cohort.students<<(@student)
  end

  def update
  end

  def destroy
  end
end
