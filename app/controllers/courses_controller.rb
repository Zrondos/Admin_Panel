class CoursesController < ApplicationController

    def index
        @courses=Course.all
    end

    def new
        @course=Course.new
    end

    def create
        @course=Course.create(
            name: params[:course][:name],
            hours: params[:course][:hours]
        )
        redirect_to '/courses'
    end

end
