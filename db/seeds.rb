# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


10.times do
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

10.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.first_name, zip_code: Faker::Number.number(6), city_id: City.all.sample.id)
end

10.times do
  city = City.create!(name: Faker::Address.city)
end

10.times do
  appointment = Appointment.create!(date: Faker::Date.forward(10), doctor_id: Doctor.all.sample.id, patient_id: Patient.all.sample.id, city_id: City.all.sample.id)
end

10.times do
  specialty = Specialty.create!(specialty: Faker::Job.title)
end

10.times do
  doctor_specialty = DoctorSpecialty.create(doctor_id: Doctor.all.sample.id, specialty_id: Specialty.all.sample.id)
end

