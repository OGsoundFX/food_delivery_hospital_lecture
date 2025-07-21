require "csv"
require_relative "patient"

class PatientsRepository
  attr_reader :patients

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []
    load_csv
  end

  def create(patient)
    patient.id = @next_id
    @next_id += 1
    @patients << patient
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: true, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == "true"
      patient = Patient.new(row)
      patient.room = row[:room].to_i
      @patients << patient
      @next_id = @patients.empty? ? 1 : @patients.last.id + 1
    end
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << ["id", "name", "cured", "room"]
      @patients.each do |patient|
        csv << [patient.id, patient.name, patient.cured?, patient.room]
      end
    end
  end
end
