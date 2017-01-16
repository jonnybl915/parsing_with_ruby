# Good news Rubyists!
# We have a week of records tracking what we shipped at Planet Express.
# I need you to answer a few questions for Hermes.


# 1. How much money did we make this week?
# 2. How much of a bonus did each employee get?
# (bonuses are paid to employees who pilot the Planet Express)
# bonuses = 5% of total money for each delivered shipment

# 3. How many trips did each employee pilot?

# 4. How much money did we make broken down by planet?
# ie.. how much did we make shipping to Earth? Mars? Saturn? etc.


# Fry - pilots to Earth (because he isn't allowed into space)
# Amy - pilots to Mars (so she can visit her family)
# Bender - pilots to Uranus (teeheee...)
# Leela - pilots everywhere else because she is the only responsible one

require 'json'
require 'csv'
require 'erb'

moneys = []
revenue = 0

frys_money = 0
amys_money = 0
benders_money = 0
leelas_money = 0
frys_trips = 0
amys_trips = 0
benders_trips = 0
leelas_trips = 0
earths_money = 0
mars_money = 0
uranus_money = 0
moon_money = 0
jupiter_money = 0
pluto_money = 0
saturn_money = 0
mercury_money = 0

CSV.foreach('orders.csv', headers: true) do |order|
  puts order  # puts all of the parsed lines here...
  moneys.push(order['Money'].to_i)
  money_for_entire_shipment = (order['Money'].to_i * order['Crates'].to_i)

def get_money_per_planet(csv_line, planet_name)
  if csv_line['Destination'] == planet_name

  end
end

  revenue += money_for_entire_shipment


  if order['Destination'] == 'Earth'
    frys_money += money_for_entire_shipment.to_f * 0.05
    frys_trips += 1
    earths_money += money_for_entire_shipment

  elsif order['Destination'] == 'Mars'
    amys_money += money_for_entire_shipment.to_f * 0.05
    amys_trips += 1
    mars_money += money_for_entire_shipment

  elsif order['Destination'] == 'Uranus'
    benders_money += money_for_entire_shipment.to_f * 0.05
    benders_trips += 1
    uranus_money += money_for_entire_shipment
  elsif order['Destination'] == 'Jupiter'
    jupiter_money += money_for_entire_shipment
    leelas_money += money_for_entire_shipment.to_f * 0.05
    leelas_trips += 1
  elsif order['Destination'] == 'Moon'
    moon_money += money_for_entire_shipment
    leelas_money += money_for_entire_shipment.to_f * 0.05
    leelas_trips += 1

  elsif order['Destination'] == 'Pluto'
    pluto_money += money_for_entire_shipment
    leelas_money += money_for_entire_shipment.to_f * 0.05
    leelas_trips += 1
  elsif order['Destination'] == 'Mercury'
    mercury_money += money_for_entire_shipment
    leelas_money += money_for_entire_shipment.to_f * 0.05
    leelas_trips += 1

  elsif order['Destination'] == 'Saturn'
    saturn_money += money_for_entire_shipment
    leelas_money += money_for_entire_shipment.to_f * 0.05
    leelas_trips += 1

  end

end

CSV.open '/Users/jblack/RubymineProjects/CSV_Parsing/output.csv', 'w' do |csv|

  csv <<  ["info string", "variable"]
  csv <<  ["total Money made this week: ", revenue]

  csv <<  ["Fry will get the bonus of: ", frys_money]
  csv <<  ["Frys total trips this week: ", frys_trips]

  csv <<  ["Amy will get the bonus of: ", amys_money]
  csv <<  ["Amys total trips this week: ", amys_trips]

  csv <<  ["Bender will get the bonus of: ", benders_money]
  csv <<  ["Benders total trips this week: ", benders_trips]

  csv <<  ["Leela will get the bonus of: ",leelas_money]
  csv <<  ["Leelas total trips this week: ", leelas_trips]

  csv <<  ["by shipments from Earth we Earned ", earths_money]
  csv <<  ["by shipments from Mars we Earned ", mars_money]
  csv <<  ["by shipments from Uranus we Earned ", uranus_money]
  csv <<  ["by shipments from the Moon we Earned ", moon_money]
  csv <<  ["by shipments from Jupiter Earned ", jupiter_money]
  csv <<  ["by shipments from Saturn Earned ", saturn_money]
  csv <<  ["by shipments from Pluto Earned ", pluto_money]
  csv <<  ["by shipments from Mercury Earned ", mercury_money]
  end


puts "total Money made this week: #{revenue}"

puts "Fry will get the bonus of: #{frys_money}"
puts "Frys total trips this week: #{frys_trips}"

puts "Amy will get the bonus of: #{amys_money}"
puts "Amys total trips this week: #{amys_trips}"

puts "Bender will get the bonus of: #{benders_money}"
puts "Benders total trips this week: #{benders_trips}"

puts "Leela will get the bonus of: #{leelas_money}"
puts "Leelas total trips this week: #{leelas_trips}"

puts "Earned #{earths_money} by shipments from Earth"
puts "Earned #{mars_money} by shipments from Mars"
puts "Earned #{uranus_money} by shipments from Uranus"
puts "Earned #{moon_money} by shipments from the Moon"
puts "Earned #{jupiter_money} by shipments from Jupiter"
puts "Earned #{saturn_money} by shipments from Saturn"
puts "Earned #{pluto_money} by shipments from Pluto"
puts "Earned #{mercury_money} by shipments from Mercury"



