require_relative 'beberage.rb'

class Coffee < Beberage
  def steepMainIngredient
    puts 'dripping coffee through filter'
  end
 
  def steepTooping
    puts 'adding sugar and milk'
  end
end