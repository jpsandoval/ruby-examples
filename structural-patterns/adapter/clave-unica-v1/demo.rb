require_relative 'login_service'
require_relative 'client'

#str.gsub("subString", "")
service = LoginService.new
client = ConsoleClient.new(service)
client.run