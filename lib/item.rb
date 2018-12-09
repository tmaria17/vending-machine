class Item
  attr_reader :name
  def initialize(item_data)
    @name = item_data["type"]
  end
end
