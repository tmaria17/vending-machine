require './lib/item.rb'

class Slot
  attr_reader :items

  def initialize(slot_name, slot_data)
    @slot_name = slot_name
    @capacity = slot_data["capacity"]
    @items = slot_data["contents"].map do |item_data|
        Item.new(item_data)
      end
    @cost = slot_data["cost"]
  end
end
