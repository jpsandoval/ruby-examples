class Battery
  def initialize
    super
    @carga = 100 # 100 % de carga
    @tiempo = 60 # 60 minutos restantes
  end
  def consume(voltios)
    porcentaje_consumido = voltios/256
    @carga = @carga - porcentaje_consumido
    @tiempo = @tiempo - porcentaje_consumido*60
    notifyAll
  end
  def carga
    @carga
  end
end