# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Appointment.destroy_all
DoctorSpecialty.destroy_all
Specialty.destroy_all
Doctor.destroy_all
Patient.destroy_all
City.destroy_all

puts "Creating cities..."
paris      = City.create(name: "Paris")
lyon       = City.create(name: "Lyon")
marseille  = City.create(name: "Marseille")

puts "Creating specialties..."
cardio = Specialty.create(name: "Cardiologie")
derma  = Specialty.create(name: "Dermatologie")
neuro  = Specialty.create(name: "Neurologie")
pedia  = Specialty.create(name: "Pédiatrie")

puts "Creating doctors..."
d1 = Doctor.create(first_name: "Greg", last_name: "House", zip_code: "75001", city: paris)
d2 = Doctor.create(first_name: "Meredith", last_name: "Grey", zip_code: "69000", city: lyon)
d3 = Doctor.create(first_name: "Stephen", last_name: "Strange", zip_code: "13000", city: marseille)

puts "Assigning specialties to doctors..."
d1.specialties << neuro
d1.specialties << cardio

d2.specialties << derma
d2.specialties << pedia

d3.specialties << neuro
d3.specialties << cardio
d3.specialties << derma

puts "Creating patients..."
p1 = Patient.create(first_name: "John", last_name: "Doe", city: paris)
p2 = Patient.create(first_name: "Jane", last_name: "Smith", city: lyon)
p3 = Patient.create(first_name: "Paul", last_name: "Dupont", city: marseille)

puts "Creating appointments..."
Appointment.create(date: DateTime.now + 1.day, doctor: d1, patient: p1, city: paris)
Appointment.create(date: DateTime.now + 2.days, doctor: d1, patient: p2, city: lyon)
Appointment.create(date: DateTime.now + 3.days, doctor: d2, patient: p3, city: marseille)
Appointment.create(date: DateTime.now + 4.days, doctor: d3, patient: p1, city: paris)

puts "Done! 🌱"