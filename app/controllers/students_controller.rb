class StudentsController < ApplicationController

    def index
        @students=Student.all.order('created_at ASC')
        @cohorts=Cohort.all.map{|c| [c.name, c.id]}
        @show=true
    end

    def new
        @student=Student.new
    end

    def create
        
        @cohorts=Cohort.all.map{|c| [c.name, c.id]}
        @students=Student.all.order('created_at ASC')
        @student=Student.create(first_name: params[:student][:first_name],
        last_name: params[:student][:last_name], 
        age: params[:student][:age] ,
        education: params[:student][:education]
        )
        respond_to do |format|
            @show=true
            format.html {redirect_to students_path}
            format.js 
        end
    end

    def update
        @student=Student.find(params[:id])
        @student.update(first_name: params[:student][:first_name],
        last_name: params[:student][:last_name], 
        age: params[:student][:age] ,
        education: params[:student][:education],
        cohort_id: params[:student][:cohort_id]
        )
        # redirect_to student_path(@student.id)
    end

    def remove
        to_remove=StudentsCohort.find_by(student_id: params[:student_id], cohort_id: params[:cohort_id])
        to_remove.destroy
        respond_to do |format|
            format.html {redirect_to students_path}
            format.js 
        end
        redirect_to students_path
    end

    def destroy
        @student=Student.find(params[:id])
        @student.destroy
        respond_to do |format|
            format.html {redirect_to students_path}
            format.js 
        end
    end

    def create_cohorts_student
        puts "!!!!!!!!!"
        array=params[:cohorts]
        array.map!(&:to_i)
        array=array[1..-1]
        array.each do |cohort_id|
            StudentsCohort.create(
                cohort_id: cohort_id,
                student_id: params[:student_id]  
            )
        end
        
        @student=Student.find(params[:student_id])
        @cohorts=Cohort.all.map{|c| [c.name, c.id]}
        respond_to do |format|
            
            format.js 
        end
    end
end
