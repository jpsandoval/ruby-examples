require_relative 'observers'
require_relative 'observable'

counter = Counter.new
counter.addObserver(Logger.new)
counter.addObserver(BoundaryController.new)

counter.increment
counter.increment
counter.increment
counter.increment
counter.increment
counter.decrement