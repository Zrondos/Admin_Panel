require 'rake'

class MainController < ApplicationController
  def index
    @courses=Course.all
    @cohorts=Cohort.all
    @instructors=Instructor.all
    @students=Student.all
  end

  def reseed_database
    Panel::Application.load_tasks
    Rake::Task['db:reseed'].invoke
    redirect_to root_path
  end

end
