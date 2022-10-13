require_relative 'pizza'
require_relative 'cheese'
require_relative 'pineapple'
require_relative 'ham'
require_relative 'base_pizza'


basic_pizza = Cheese.new(Ham.new(BasePizza.new))
basic_pizza.print
puts "#{basic_pizza.cost}"

#pizza = BasePizza.new
#while command != "end"
#    command = gets
#    if command == "ham" the
#        pizza= Ham.new(pizza)
#    elsif command == "cheese"
#        pizza= Cheese.new(pizza)
#    else
#
#    end
#end