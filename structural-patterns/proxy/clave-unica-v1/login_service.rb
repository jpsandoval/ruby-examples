class LoginProxy
    def initialize(objetoOriginal)
        @objetoOriginal = objetoOriginal
    end
    def login(rut,pass)
        puts "sending..."
        result = @objetoOriginal.login(rut,pass)
        puts "login complete"
        return result
    end
end

class LoginService
    def initialize()
        @users = { "10001-2" => "123",
                  "10002-3" => "333",
                  "12117-4" => "444" }
    end
    def login(rut, pass)
        return @users[rut.strip] == pass.strip
    end
end