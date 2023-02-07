class Renderable::RenderQueue

  attr_accessor :_queue

  def initialize(limit: nil)
    @limit = limit
    @_queue = []
  end

  def push(item)
    return false if full?

    @_queue << item
  end

  def pop
    @_queue.shift
  end

  def full?
    @limit != nil && @_queue.size >= @limit.to_i
  end
end
