require_relative 'cheese_pizza'
require_relative 'clam_pizza'
require_relative 'pepperoni_pizza'
require_relative 'veggie_pizza'

class SimplePizzaFactory
  # un factory method
  # es un metodo que normalmente crea las clases dentro de una jerarquia
  def create(type)
    if type == 'cheese'
      pizza = CheesePizza.new
    elsif type == 'pepperoni'
      pizza = PepperoniPizza.new
    elsif type == 'clam'
      pizza = ClamPizza.new
    elsif type == 'veggie'
      pizza = VeggiePizza.new
    elsif
      raise NotSupportedPizza
    end
    pizza
  end
end