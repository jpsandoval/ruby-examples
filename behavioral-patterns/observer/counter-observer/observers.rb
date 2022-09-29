
class Observer
  def update(observable)
    raise NotImplementedError
  end
end

class Logger < Observer
  def update(counter)
    puts "hey the counter in moving #{counter.value}"
  end
end

class BoundaryController < Observer
  def update(counter)
    if counter.value >= 5
      puts "cuidado paso los 5"
    end
  end
end