class Observer
    def update(battery)
        raise NotImplementedError
    end
end

class LowBatteryObserver < Observer
    def update(battery)
        if battery.carga() < 20
            puts 'low battery'
        end
    end
end
class PowerOffObserver < Observer
    def update(battery)
        if battery.carga() == 0
            puts 'bye bye'
        end
    end
end