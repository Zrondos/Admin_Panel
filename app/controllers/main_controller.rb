class MainController < ApplicationController
  def index
    @courses=Course.all
    @cohorts=Cohort.all
    @instructors=Instructor.all
    @students=Student.all
  end
end
