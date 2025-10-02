namespace :departments do
    desc "Update Student and Employee Count"
    task update_student_employee_count: :environment do
        departments = Department.all
        departments.each do |department|
            student_total = department.students.count
            employee_total = department.teachers.count
            department.update(student_count: student_total, employee_count: employee_total)
        end
    end
end

#run in console using the  command
#docker compose run --rm web bundle rake departments:update_student_employee_count
