require_relative "appointment"
require_relative "doctor"
require_relative "patient"
require_relative "./patients_repository.rb"

patient = PatientsRepository.new("./patients.csv").patients.first

doctor = Doctor.new(id: 1, name: "Doctor House")

appointment = Appointment.new(id: 1, patient: patient, doctor: doctor)

p appointment
