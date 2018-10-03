class StudentsCohortsController < ApplicationController
    def new
        @students=Student.all.map{|s| [s.first_name, s.id] }
        @cohorts=Cohort.all.map{|c| [c.name, c.id]}
        @students_cohorts= StudentsCohort.new
    end

    def create
        StudentsCohort.create(
            student_id: params[:students_cohort][:student_id],
            cohort_id: params[:students_cohort][:cohort_id]
        )
        redirect_to students_path
    end


end
