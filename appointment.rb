class Appointment
  def initialize(attrs = [])
    @id = attrs[:id]
    @date = attrs[:date]
    @doctor = attrs[:doctor]
    @patient = attrs[:patient]
  end
end
