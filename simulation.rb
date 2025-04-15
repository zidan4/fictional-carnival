# Universe Simulation – Planets Orbiting a Star

class Planet
  attr_reader :name, :distance_au

  def initialize(name, distance_au)
    @name = name
    @distance_au = distance_au
  end

  def orbital_period
    Math.sqrt(@distance_au ** 3).round(2) # Kepler's 3rd Law (simplified)
  end

  def to_s
    "#{name} is #{distance_au} AU from the sun, orbits in ~#{orbital_period} Earth years."
  end
end

solar_system = [
  Planet.new("Mercury", 0.39),
  Planet.new("Venus", 0.72),
  Planet.new("Earth", 1.0),
  Planet.new("Mars", 1.52)
]

solar_system.each { |planet| puts planet }
