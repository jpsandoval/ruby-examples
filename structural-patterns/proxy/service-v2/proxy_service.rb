require_relative 'service'

class ProxyService < Service
  def initialize(service)
    @originalService = service
  end
  def operate
    puts "starting #{@originalService.class.name}"
    @originalService.operate
    puts "#{@originalService.class.name} finished"
  end
end