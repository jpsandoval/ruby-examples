require_relative 'simple_pizza_factory'


class PizzaStore
  
  def orderPizza(type)
    pizza = SimplePizzaFactory.new.create(type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end
end