# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create(name: 'SEI', hours: 560)

Cohort.create(name: 'methods', start_date: '7/22/2018', end_date: '10/31/2018', course_id: 1)

Student.create(first_name: 'Zach', last_name: 'Rondos', age: 21, education: 'None', cohort_id: 1)
Student.create(first_name: 'Ash', last_name: 'Ketchum', age: 21, education: 'None', cohort_id: 1)

Instructor.create(first_name: 'Professor', last_name: 'Oak', age: 40, education: 'Master', cohort_id: 1)
