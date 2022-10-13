require_relative 'login_service'
require_relative 'client'

#str.gsub("subString", "")
originalService= LoginService.new
serviceAdaptado = LoginAdapter.new(originalService)
client = ConsoleClient.new(serviceAdaptado)
client.run