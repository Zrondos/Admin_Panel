Course.create(name: 'Pokemon 101',
            hours: 10
            )
Course.create(name: 'Pokemon 201',
             hours: 20)

Cohort.create(name: 'Team Rocket',
        start_date: Time.now,
        end_date: Time.now,
        course_id: 1)

Cohort.create(name: 'Team Aqua',
        start_date: Time.now,
        end_date: Time.now,
        course_id: 1)

Cohort.create(name: 'Team Magma',
        start_date: Time.now,
        end_date: Time.now,
        course_id: 1)

Instructor.create(first_name: 'Professor',
                last_name:'Oak',
                age: 50,
                salary: 100,
                education: 'None',
                cohort_id: 1)

Instructor.create(first_name: 'Professor',
                last_name: 'Elm',
                age: 50,
                salary: 100,
                education: 'None',
                cohort_id: 2)

Instructor.create(first_name: 'Professor',
                last_name: 'Birch',
                age: 50,
                salary: 100,
                education: 'None',
                cohort_id: 3)


Student.create(first_name: 'Ash',
                last_name: 'Ketchum',
                age: 20,
                education: 'None')

Student.create(first_name: 'Brock',
                last_name: 'Onix',
                age: 20,
                education: 'None')

StudentsCohort.create(student_id: 1,
                      cohort_id: 1)

StudentsCohort.create(student_id: 1,
                      cohort_id: 2)

StudentsCohort.create(student_id: 2,
                      cohort_id: 1)