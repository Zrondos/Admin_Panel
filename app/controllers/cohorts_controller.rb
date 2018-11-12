class CohortsController < ApplicationController
    def index
        @cohorts=Cohort.all.order('created_at ASC')
        @cohort=Cohort.new
        @courses=Course.all.map{ |c| [c.name, c.id]}
        @students=Student.all.map{|student| [student.first_name, student.id]}
    end

    def new
        @cohort=Cohort.new
        @courses=Course.all.map{ |c| [c.name, c.id]}
    end

    def create
        @students=Student.all.map{|student| [student.first_name, student.id]}
        @students_to_select = @students.dup
        @cohorts=Cohort.all.order('created_at ASC')
        @courses=Course.all.map{ |c| [c.name, c.id]}
        @cohort=Cohort.create(name: params[:cohort][:name],
        start_date: params[:cohort][:start_date],
        end_date: params[:cohort][:end_date],
        course_id: params[:cohort][:course_id])
        respond_to do |format|
            @show=true
            format.html {redirect_to instructors_path}
            format.js  
        end
    end

    # def edit
    #         @instructors=Instructor.all
    #         @cohort=Cohort.find(params[:id])
    #         @courses=Course.all
    #         @students_cohorts=Student.all.map{|s| [s.first_name, s.id] }
    # end

    # def show
    #     @cohort=Cohort.find(params[:id])
    # end

    def update
        @cohort=Cohort.find(params[:id])
        @cohort.update(name: params[:cohort][:name],
        start_date: params[:cohort][:start_date],
        end_date: params[:cohort][:end_date],
        course_id: params[:cohort][:course_id])
        
    end

    def destroy
        @cohort=Cohort.find(params[:id])
        @cohort.destroy
        respond_to do |format|
            format.js 
        end
    end

    def create_students_cohort
        puts "!!!!!!!!!"
        @students=Student.all.map{|student| [student.first_name, student.id]}
        @students_to_select = @students.dup
        @cohorts=Cohort.all.order('created_at ASC')
        array=params[:students_ids]
        array.map!(&:to_i)
        array=array[1..-1]
        array.each do |student_id|
        StudentsCohort.create(
            student_id: student_id,
            cohort_id: params[:cohort_id]
        )
        end
        @cohort=Cohort.find(params[:cohort_id])
        @cohort.students.each do |student|
            for i in 0...@students_to_select.length-1
                if student.id == @students_to_select[i][1]
                    @students_to_select.slice!(i) 
                end 
            end 
            if @students_to_select[-1][1]==student.id
                @students_to_select=@students_to_select[0...-1]
            end
        end
        respond_to do |format|
            format.js 
        end
    end
end
