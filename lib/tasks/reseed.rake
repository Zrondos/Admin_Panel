namespace :db do

    desc "Delete all entries without destroy database"
    task delete_all: :environment do
        Student.destroy_all
        Cohort.destroy_all
        Course.destroy_all
        Instructor.destroy_all
        StudentsCohort.destroy_all
    end
    
    desc 'Drop, create, migrate then seed the development database'
    task reseed: ['db:delete_all','db:seed', :environment ] do
      puts 'Reseeding completed.'
    end
end
