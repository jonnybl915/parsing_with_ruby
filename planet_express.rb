require 'csv'

#CSV.foreach('orders.csv')

numbers = []
1000.times do
  numbers.push rand(1..10)
end

#Question: how many times does each number show up?
# 1 => 50
# 2 => 76
# ...

counts = {}

numbers.each do |x|

  # if counts[x] == nil
  #  counts[x] = 0
  # end
  # ^ same as below
  counts[x] = counts[x] || 0

  # counts[x] ||= 0 Same as above^
  # ^ guard clause

  counts[x] += 1
end
puts counts