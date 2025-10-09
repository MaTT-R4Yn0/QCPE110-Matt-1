namespace :guardians do
    desc "Update Guardian's Count of Students"
    task update_guardians_student_count: :environment do
        guardians = Guardian.all
        guardians.each do |guardian|
            student_count = guardian.student_guardians.count
            guardian.update(number_of_students: student_count)
        end
    end
end

#run in console using the  command
#docker compose run --rm web bundle exec rake guardians:update_guardians_student_count
