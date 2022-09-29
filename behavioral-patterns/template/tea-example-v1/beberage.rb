
class Beberage
    def prepareRecipe
        boilWater
        steepMainIngredient
        pourInCup
        steepTooping
    end
    def steepMainIngredient
        raise NotImplementedError
    end
    def steepTooping
        raise NotImplementedError
    end
    def pourInCup
        puts 'Pouring in cup'
    end
    def boilWater
        puts 'boiling water'
      end
end