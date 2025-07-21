class Room
  attr_accessor :capacity, :patients, :id

  def initialize(attrs = {})
    @capacity = attrs[:capacity] || 0
    @patients = attrs[:patients] || []
  end

  def full?
    @patients.size == @capacity
  end

  def add_patient(patient)
    raise StandardError, "Room is full!" if full?
    @patients << patient
    patient.room = self
  end
end
