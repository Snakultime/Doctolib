require 'faker'
def doctor
    5.times do
        doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, specialty: Faker::Pokemon.name, postal_code: Faker::Address.zip)
    end
end

def patient
    10.times do
      Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    end
end

def appoitment
    15.times do
      Appoitment.create(date: Faker::Date.forward(30), patient_id: rand((Patient.first.id)..(Patient.last.id)), doctor_id: rand((Doctor.first.id)..(Doctor.last.id)))
    end
end

doctor
patient
appoitment
