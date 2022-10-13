require_relative 'topping'

class Pineapple < PizzaTopping

  def print
    
    puts 'pineapple'
    
  end
  def cost
    @decoratedPizza.cost * 2
  end
end