Course.create(name: 'Vault',
            hours: 100
            )
Course.create(name: 'Uneven Bars',
             hours: 200)

Cohort.create(name: 'Rio 2016',
        start_date: Time.now,
        end_date: Time.now,
        course_id: 1)

Cohort.create(name: 'London 2012',
        start_date: Time.now,
        end_date: Time.now,
        course_id: 1)

Instructor.create(first_name: 'Marta',
                last_name:'Karolyi',
                age: 50,
                salary: 100,
                education: 'None',
                cohort_id: 1)

Instructor.create(first_name: 'Coach Jordyn',
                last_name: 'Wieber',
                age: 50,
                salary: 100,
                education: 'None',
                cohort_id: 2)

Student.create(first_name: 'Aly',
                last_name: 'Raisman',
                age: 20,
                education: 'None')

Student.create(first_name: 'Kyla',
                last_name: 'Ross',
                age: 20,
                education: 'None')

StudentsCohort.create(student_id: 1,
                      cohort_id: 1)

StudentsCohort.create(student_id: 1,
                      cohort_id: 2)

StudentsCohort.create(student_id: 2,
                      cohort_id: 1)