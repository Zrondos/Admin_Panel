class InstructorsController < ApplicationController
    def index
        @instructors = Instructor.all
    end

    def new
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.create(
            first_name: params[:instructor][:first_name],
            last_name: params[:instructor][:last_name],
            age: params[:instructor][:age],
            salary: params[:instructor][:salary],
            education: params[:instructor][:education],
            cohort_id: params[:instructor][:cohort_id]
        )
        redirect_to '/instructors'
    end
end
