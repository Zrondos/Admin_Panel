class Instructor < ApplicationRecord
    belongs_to :cohort, {optional: true}
    validates :salary, numericality: { greater_than: 0 }
end
