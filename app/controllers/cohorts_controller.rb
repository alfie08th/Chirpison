class CohortsController < ApplicationController

   def index
    @cohorts = Cohort.all.reverse

  end

  def new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
