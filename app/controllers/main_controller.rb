require 'rake'



class MainController < ApplicationController
  def index
    @courses=Course.all
    @cohorts=Cohort.all
    @instructors=Instructor.all
    @students=Student.all
  end

  def reseed_database
    Rake::Task.clear
    Panel::Application.load_tasks
    Rake::Task['db:reseed'].execute
    redirect_to root_path
  end

end
