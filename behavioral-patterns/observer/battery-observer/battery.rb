class Battery
  def initialize
    super
    @carga = 100 # 100 % de carga
    @tiempo = 60 # 60 minutos restantes
    @observers = []
  end
  def add(obs)
    @observers.push(obs)
  end
  #se llama al metodo notify all normalmente cuando el objeto cambia de estado
  def notifyAll()
    @observers.each do |obs|
      obs.update(self)
    end
  end

  def consume(voltios)
    porcentaje_consumido = voltios/256
    @carga = @carga - porcentaje_consumido
    @tiempo = @tiempo - porcentaje_consumido*60
    notifyAll()
  end
  def carga
    return @carga
  end
end