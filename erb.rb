require 'csv'
require 'erb'
def pilot_for_planet(planet)
end

#practice
name = "Jon"
time = "today"
question = "Hello <%= name%>, how are you <%= time%>"
output = ERB.new(question).result(binding)
puts output

name = "A different name"

output = ERB.new(question).result(binding)
puts output

# 4. Revenue per planet
revenues_per_planet = Hash.new(0)
revenues_per_pilot = Hash.new(0)
# { Earth => 100, Moon => 200, ... }
CSV.foreach('/Users/jblack/RubyMineProjects/hello_parsing_ruby/orders.csv', headers: true) do |row|
  # have `row`
  revenue_for_order = row['Money'].to_i * row['Crates'].to_i
  planet = row['Destination']

  # revenues_per_planet[planet] ||= 0
  revenues_per_planet[planet] += revenue_for_order

  pilot = pilot_for_planet(planet)
  revenues_per_pilot[pilot] += revenue_for_order
end

puts revenues_per_planet

template = File.read '/Users/jblack/RubyMineProjects/hello_parsing_ruby/report.html'
output = ERB.new(template).result(binding)
puts output