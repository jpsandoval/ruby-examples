
class Observable
  
  def initialize
    @observers = []
  end
  def addObserver(obs)
    @observers.push(obs)
  end
  def notifyAll()
    @observers.each {
      |obs|
      obs.update(self)
    }
  end
end

class Counter < Observable
  def initialize
    super
    @value = 0
  end
  
  def increment
    @value = @value + 1
    notifyAll
  end
  
  def print
    puts "counter: #{@value}"
  end
  
  def decrement
    @value = @value - 1
    notifyAll
  end

  def value
    @value
  end
end