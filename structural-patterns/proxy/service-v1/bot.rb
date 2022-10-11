require_relative 'service'

class Bot
  def perform(service,monitor)
    if monitor
      puts "starting #{service.class.name}"
    end
    
    service.operate
    
    if monitor
      puts "#{service.class.name} finished"
    end
  end
end