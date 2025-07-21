require_relative "patients_repository"

csv_file_path = "./patients.csv"

repo = PatientsRepository.new(csv_file_path)

p repo.patients
