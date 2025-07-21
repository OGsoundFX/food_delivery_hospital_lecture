class Patient
  attr_accessor :name, :room, :id

  def initialize(attrs = {})
    @id = attrs[:id]
    @name = attrs[:name]
    @cured = attrs[:cured] || false
  end

  def cured?
    @cured
  end

  def cured!
    @cured = true
  end
end
