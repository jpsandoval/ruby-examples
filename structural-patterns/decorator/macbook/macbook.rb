
class MacBook
    def print
        puts "Macbook "
        puts " #{totalGPU} de GPU"
        puts " #{totalRAM} de RAM"
    end
    def displaySize
        return 14
    end
    def totalGPU
        raise NotImplementedError
    end
    def totalRAM
        raise NotImplementedError
    end
end

class MacBookBase < MacBook
    def totalGPU
        return 16
    end
    def totalRAM
        return 16
    end
end

class MacBookDecorator < MacBook
    def initialize(objetoDecorado)
        @objetoDecorado = objetoDecorado
    end 
end

class Plus16RAM < MacBookDecorator
    def totalRAM
        return @objetoDecorado.totalRAM + 16
    end
end

class Plus32RAM < MacBookDecorator
    def totalRAM
        return @objetoDecorado.totalRAM + 32
    end
end

class Plus16GPU < MacBookDecorator
    def totalGPU
        return @objetoDecorado.totalRAM + 16
    end
end

mac = MacBookBase.new
macPlus32RAM = Plus16RAM.new(mac)
macPlus64RAM = Plus32RAM.new(macPlus16RAM)
