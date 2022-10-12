require_relative 'pizza'
require_relative 'cheese'
require_relative 'pineapple'
require_relative 'ham'
require_relative 'base_pizza'

# con la v2 podemos crear variedad de tipos de pizza de forma dinamica

basic_pizza = Cheese.new(Ham.new(BasePizza.new))
basic_pizza.print
puts "#{basic_pizza.cost}"