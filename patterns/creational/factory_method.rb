class HeavyMetal; end

class ThrashMetal; end

class Festival
  attr_accessor :bands, :factory

  def initialize(factory)
    @bands = []
    @factory = factory
  end

  def add_heavy_metal(number)
    number.times { bands << factory.create_heavy_metal }
  end

  def add_thrash_metal(number)
    number.times { bands << factory.create_thrash_metal }
  end
end

class BandFactory
  def create_heavy_metal
    HeavyMetal.new
  end

  def create_thrash_metal
    ThrashMetal.new
  end
end
