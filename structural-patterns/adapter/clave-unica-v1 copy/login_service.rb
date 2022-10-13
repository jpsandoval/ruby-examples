class LoginAdapter
    def initialize(inadaptado)
        @inadaptado =inadaptado
    end
    def login(rut,pass)
        PassSinPuntos= pass.gsub(".", "")
        return @inadaptado.login_user(rut,PassSinPuntos) == "OK"
    end
end

class LoginService
    def initialize()
        @users = { "10001-2" => "123",
                  "10002-3" => "333",
                  "12117-4" => "444" }
    end
    def login_user(rut, pass)
        if @users[rut.strip] == pass.strip then
            return "OK"
        else
            return "No Okay"
    end
end