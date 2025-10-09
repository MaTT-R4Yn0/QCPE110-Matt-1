namespace :students do
    desc "Update Student's Count of Guardian"
    task update_students_guardian_count: :environment do
        students = Student.all
        students.each do |student|
            guardian_count = student.student_guardians.count
            student.update(number_of_guardians: guardian_count)
        end
    end
end

#run in console using the  command
#docker compose run --rm web bundle exec rake students:update_students_guardian_count
