require_relative './reader.rb'
require './lib/slot.rb'
require 'json'
require 'pry'

class VendingMachine
  attr_reader :vending_data

  def initialize(vending_data)
    @vending_data = Reader.new.read_data
    @slots = @vending_data[:contents].first.first.map do |slot_name, slot_data|
      Slot.new(slot_name, slot_data)
    end
  end
end

#pass in objects into the vending machine
#machine = Machine.new
#machine.slots
#machine.add_slot
#slot = Slot.new
# items = data[:contents].map
#   Item.new(c)
# end
#slot.add_items(items)
