class CohortsController < ApplicationController
    def index
        @cohorts=Cohort.all
    end

    def new
        @cohort=Cohort.new
        @courses=Course.all
    end

    def create
        @cohort=Cohort.create(name: params[:cohort][:name],
        start_date: params[:cohort][:start_date],
        end_date: params[:cohort][:end_date],
        course_id: params[:cohort][:course_id])
        redirect_to '/cohorts'
    end

    def edit
            @instructors=Instructor.all
            @cohort=Cohort.find(params[:id])
    end

    def update
        @cohort=Cohort.find(params[:id])
        @cohort.update(instructor_id: params[:cohort][:instructor_id]
        )
        redirect_to '/cohorts'
    end

end
