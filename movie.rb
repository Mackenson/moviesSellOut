class Theater
  attr_accessor :admitted, :capacity

  def initialize(seat)
    @capacity = seat
    @admitted = 0
  end

  def admit!(patrons = 1)
    if @admitted + patrons > @capacity
       "We sorry our Theater is full at the moment please come back later!"
    else
      @admitted += patrons
    end
  end

  def at_capacity
    @admitted == @capacity
  end

  def record_walk_outs!(patrons = 1)
    @admitted -= patrons
  end
end
