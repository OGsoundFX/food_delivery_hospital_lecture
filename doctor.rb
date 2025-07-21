class Doctor
  attr_accessor :id

  def initialize(attrs = {})
    @id = attrs[:id]
    @name = attrs[:name]
  end
end
