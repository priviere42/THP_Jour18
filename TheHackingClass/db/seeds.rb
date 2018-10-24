# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

5.times do |index|
    lessons = Lesson.create!(name: Faker::Job.field)
end

100.times do |index|
    students = Student.create!(name: Faker::Simpsons.character, lesson_id: "#{rand(1..5)}")
end
