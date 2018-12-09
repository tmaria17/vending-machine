require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader.rb'
require './lib/vending_machine'
require 'pry'
require 'json'

class VendingMachineTest < Minitest::Test
  def setup
    @vending_data= Reader.new.read_data
    @machine = VendingMachine.new(@vending_data)
  end

  def test_it_exists
    assert_instance_of VendingMachine, @machine
  end
end
