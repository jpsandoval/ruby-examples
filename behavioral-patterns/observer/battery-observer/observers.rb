
class Observer
    def update(battery)
        raise NotImplementedError
    end
end

class LowBatteryObserver < Observer
    def update(battery)
        if battery.carga < 20
            puts "< 20% of battery"
        end
    end
end

class NoBatteryObserver < Observer
    def update(battery)
        if battery.carga == 0
            puts "turning off"
        end
    end
end