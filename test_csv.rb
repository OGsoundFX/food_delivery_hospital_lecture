require "csv"
require_relative "patient"
require_relative "room"

patients = []
CSV.foreach("./patients.csv", headers: true, header_converters: :symbol) do |row|
  row[:id] = row[:id].to_i
  row[:cured] = row[:cured] == "true"

  patient = Patient.new(row)
  patient.room = row[:room_id].to_i
  patients << patient
end

patients.each do |patient|
  puts "#{patient.name} is in room #{patient.room} / cured: #{patient.cured? ? '✅' : '🤮'}"
end
