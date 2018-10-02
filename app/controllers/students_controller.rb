class StudentsController < ApplicationController

    def index
        @students=Student.all
    end

    def new
        @student=Student.new
    end

    def create
        @student=Student.create(first_name: params[:student][:first_name],
        last_name: params[:student][:last_name], 
        age: params[:student][:age] ,
        education: params[:student][:education],
        cohort_id: nil
        )
        redirect_to '/students'
    end

    def show
        @student=Student.find(params[:id])
    end

    def edit
        @student=Student.find(params[:id])
    end

    def update
        @student=Student.find(params[:id])
        @student.update(first_name: params[:student][:first_name],
        last_name: params[:student][:last_name], 
        age: params[:student][:age] ,
        education: params[:student][:education],
        cohort_id: params[:student][:cohort_id]
        )
        redirect_to student_path(@student.id)
    end

    def destroy
        @student=Student.find(params[:id])
        @student.destroy
    end

end
