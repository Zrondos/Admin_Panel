class Cohort < ApplicationRecord
    has_many :students
    has_one :teacher
    belongs_to :course
end
