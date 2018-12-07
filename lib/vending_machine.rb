require_relative './reader.rb'
require 'json'
require 'pry'

class VendingMachine
  attr_reader :vending_data

  def initialize(vending_data)
    @vending_data = Reader.new.read_data
  end

  def contents
    @vending_data["contents"]
  end


end
