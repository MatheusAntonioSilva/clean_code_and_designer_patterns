class Burger
  def cost
    50
  end
end

class LargeBurger
  def initialize(burger)
    @burger = burger
  end

  def cost
    @burger.cost + 15
  end
end

burger = Burger.new
large_burger = LargeBurger.new(burger)
extra_large_burger = LargeBurger.new(large_burger)
