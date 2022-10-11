require_relative 'service'

class Bot
  def perform(service)
    service.operate
  end
end