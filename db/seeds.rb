# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Department.destroy_all
Semester.destroy_all
Professor.destroy_all
Student.destroy_all
Semester.create(semester: 'Spring')
Semester.create(semester: 'Summer')
Semester.create(semester: 'Fall')
Department.create(name: 'CS')
Department.create(name: 'Math')
Department.create(name: 'Physics')
Professor.create(name: 'John Smith', office:'SCIENCE')
Professor.create(name: 'Jane Doe', office: 'CENTRAL')
Student.create(name: 'Timmy Tom', identifier: 900110234)
Student.create(name: 'Sally Sill', identifier: 900999333)
Course.create(department_id: 1, number: 1010, hours: 4)
Course.create(department_id: 2, number: 2010, hours: 3)
Section.create(course_id: 1, professor_id: 1, year: 2020, semester_id: 1)