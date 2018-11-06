class StudentsCohortsController < ApplicationController

    def create_students_cohort
        array=params[:create_students_cohort][:students_ids]
        array.map!(&:to_i)
        array=array[1..-1]
        array.each do |student_id|
        StudentsCohort.create(
            student_id: student_id,
            cohort_id: params[:students_cohort][:cohort_id]
        )
        end
    end

    def create_cohorts_student
        array=params[:cohorts]
        array.map!(&:to_i)
        array=array[1..-1]
        array.each do |cohort_id|
            StudentsCohort.create(
                cohort_id: cohort_id,
                student_id: params[:student_id]  
            )
        end
        redirect_to students_path
    end
end
