require 'faker'

def table_clean
	City.destroy_all
	Doctor.destroy_all
	Speciality.destroy_all
	Patient.destroy_all
	Appointment.destroy_all
end

def cities_seed
	5.times do |index|
		city = City.create!(name: Faker::Address.city, postal_code: Faker::Address.postcode)
	end
end

def doctors_seed
	10.times do |index|
		doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Address.postcode, city_id: Faker::Number.between(City.first.id, City.last.id))
	end
end

def specialities_seed
	8.times do |index|
		speciality = Speciality.create!(name: Faker::Superhero.power)
	end
end

def patients_seed
	15.times do |index|
		patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: Faker::Number.between(City.first.id, City.last.id))
	end
end

def appointments_seed
	15.times do |index|
		appointment = Appointment.create!(date: Faker::Time.forward(23, :morning), doctor_id: Faker::Number.between(Doctor.first.id, Doctor.last.id), patient_id: Faker::Number.between(Patient.first.id, Patient.last.id), city_id: Faker::Number.between(City.first.id, City.last.id))
	end
end

def perform
	table_clean
	cities_seed
	doctors_seed
	specialities_seed
	patients_seed
	appointments_seed
end

perform
