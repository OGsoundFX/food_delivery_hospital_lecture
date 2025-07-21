require_relative "patient"
require_relative "room"
require_relative "patients_repository"

patient = Patient.new(name: "Sandra")
patient.room = 3

repo = PatientsRepository.new("./patients.csv")

repo.create(patient)

p repo.patients
