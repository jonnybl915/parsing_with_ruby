# Good news Rubyists!
# We have a week of records tracking what we shipped at Planet Express.
# I need you to answer a few questions for Hermes.


# 1. How much money did we make this week?
# 2. How much of a bonus did each employee get?
# (bonuses are paid to employees who pilot the Planet Express)

# 3. How many trips did each employee pilot?

# 4. How much money did we make broken down by planet?
# ie.. how much did we make shipping to Earth? Mars? Saturn? etc.

require 'json'
require 'csv'


moneys = []
revenue = 0

CSV.foreach('orders.csv', headers: true) do |order|
  puts order  # puts all of the parsed lines here...
  moneys.push(order['Money'].to_i)

  moneys_for_order = (order['Money'].to_i * order['Crates'].to_i)
  revenue += moneys_for_order
end





puts "total moneys made this week is  #{revenue}"