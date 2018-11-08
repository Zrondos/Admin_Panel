class CoursesController < ApplicationController

    def index
        @courses=Course.all.order('created_at ASC')
        
    end

    def new
        @course=Course.new
    end

    def create
        @course=Course.create(
            name: params[:course][:name],
            hours: params[:course][:hours]
        )
        respond_to do |format|
            @show=true
            format.html {redirect_to courses_path}
            format.js  
        end
    end

    def update
        @course=Course.find(params[:id])
        @course.update(name: params[:course][:name],
        hours: params[:course][:hours]
        )
        respond_to do |format|
            @show=true
            format.html {redirect_to courses_path}
            format.js  
        end
    end

    def destroy
        @course=Course.find(params[:id])
        @course.destroy
        respond_to do |format|
            format.html {redirect_to courses_path}
            format.js  
        end
    end

end
