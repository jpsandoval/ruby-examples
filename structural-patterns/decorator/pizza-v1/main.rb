require_relative 'ham_cheese_normal_pizza'
require_relative 'pineapple_ham_cheese_normal_pizza'


hawaii_pizza = PineableHamCheesePizza.new
hawaii_pizza.print
puts "#{hawaii_pizza.cost}"


basic_pizza = HamCheesePizza.new
basic_pizza.print
puts "#{basic_pizza.cost}"