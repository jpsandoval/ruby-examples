
class MainFolder
  private_class_method :new
  def initialize
    @name = "root"
  end
  def self.instance
    if @instance == nil
      @instance = new
    end
    @instance
  end
end

MainFolder.instance
