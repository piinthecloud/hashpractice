class MyCities
  attr_accessor :city, :population, :mayor, :demographics, :name, :party_affil, :white, :african_american, :latinx, :asian

  def initialize(citydata)
    @city = citydata[:city]
    @population = citydata[:population]
    @mayor = citydata[:mayor].values
    @demographics = ""
    citydata[:demographics].each do |k, v|
      @demographics << "#{k} #{v} \n"
    end
  end

end

cities = [
  {
    city: "Seattle",
    population: 608660,
    mayor: {name: "Ed Murray", party_affil: "(D)"},
    demographics: {
      white: 69.5,
      african_american: 7.9,
      latinx: 6.6,
      asian: 13.8}
  },
  {
    city: "Miami",
    population: 5564635,
    mayor: {name: "Tomas Regalado", party_affil: "(R)"},
    demographics: {
      white: 11.9,
      african_american: 19.2,
      latinx: 70,
      asian: 1}
  },
  {
    city: "NYC",
    population: 8405837,
    mayor: {name: "Bill de Blasio", party_affil: "(D)"},
    demographics: {
      white: 44,
      african_american: 25.5,
      latinx: 28.6,
      asian: 12.7}
    }
  ]

cities.each do |hash|
  citydata = MyCities.new(hash)
  puts "CITY:"
  puts citydata.city
  puts "POPULATION:"
  puts citydata.population
  puts "MAYOR:"
  puts citydata.mayor
  puts "DEMOGRAPHICS:"
  puts citydata.demographics
  puts  "*" * 80
end
