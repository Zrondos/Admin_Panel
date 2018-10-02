class Cohort < ApplicationRecord
    has_many :students_cohorts
    has_many :students, through: :students_cohorts
    has_one :instructor
    belongs_to :course
end
