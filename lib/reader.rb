require "json"
require "pry"

class Reader

  def read_data
    data = File.read("./data/tiny_vending_machine.json")
    JSON.parse(data)
  end




end
