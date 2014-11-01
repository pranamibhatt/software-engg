# check for dessert 

class Dessert
  
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name, @calories = name, calories
  end
  
  def healthy?
    @calories < 200
  end
    
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  
  def initialize(name, calories, flavor)
    @name, @calories, @flavor = name, calories, flavor
  end
  
	attr_accessor :name, :calories, :flavor

  def delicious?
    if @flavor == "black licorice"
      return false
    else
      return true
    end
  end

end


# test case
dessert = JellyBean.new("cake", 230, "black licorice")
puts dessert.healthy?
puts dessert.delicious?

