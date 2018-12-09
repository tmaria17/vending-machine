require_relative './reader.rb'
require './lib/slot.rb'
require 'json'
require 'pry'

class VendingMachine

  def initialize(vending_data)
    @vending_data = Reader.new.read_data
    @slots = @vending_data["contents"].first.map do |slot_name, slot_data|
      Slot.new(slot_name, slot_data)
    end
  end
end
