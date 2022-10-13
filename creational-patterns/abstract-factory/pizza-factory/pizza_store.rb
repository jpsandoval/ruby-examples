class PizzaStore
  
  def orderPizza(type)
    pizza = create(type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end
  def create(type)
    raise NotImplementedError
  end
end