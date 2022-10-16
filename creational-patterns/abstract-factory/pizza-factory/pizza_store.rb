class PizzaStore
  
  def orderPizza(type)
    pizza = create(type)
    pizza.prepare
    pizza.bake
    pizza.cut
    pizza.box
    pizza
  end
  # este es un abstract factory method
  # un metodo que crea objetos y es abstract
  # lo definen las clases hija
  # cada clase hija se encarga de crear una familia de objetos
  def create(type)
    raise NotImplementedError
  end
end