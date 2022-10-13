require_relative 'pizza_store'
require_relative 'chicago_pizza'


class ChicagoPizzaStore < PizzaStore

  def create(type)
    if type == 'cheese'
      pizza = ChicagoCheesePizza.new
    elsif type == 'pepperoni'
      pizza = ChicagoPepperoniPizza.new
    elsif type == 'clam'
      pizza = ChicagoClamPizza.new
    elsif type == 'veggie'
      pizza = ChicagoVeggiePizza.new
    elsif
      raise NotSupportedPizza
    end
    pizza
  end
end