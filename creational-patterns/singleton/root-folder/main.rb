
class MainFolder
  private_class_method :new
  def initialize
    @name = "root"
  end
  
  def self.instance
    if @instance == nil
      @instance = new
    end
    return @instance
  end
end

folder = MainFolder.instance


#MainFolder.instance
