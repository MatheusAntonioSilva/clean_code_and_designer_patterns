require "singleton"

class Database
  include Singleton

  def connect
    @connection = Adapter.connect
  end
end
