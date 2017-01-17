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
  old_count_for_x = counts[x]
  if old_count_for_x == nil
    old_count_for_x = 0
  end
  
  new_count_for_x = old_count_for_x + 1
  counts[x] = new_count_for_x
end
puts counts