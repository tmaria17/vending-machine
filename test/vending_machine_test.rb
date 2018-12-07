require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader.rb'
require './lib/vending_machine'
require 'pry'
require 'json'

class VendingMachineTest < Minitest::Test
  def setup
    @vending_data= Reader.new
    @machine = VendingMachine.new(@vending_data)
  end

  def test_it_exists
    assert_instance_of VendingMachine, @machine
  end

  def test_it_has_contents
    assert_instance_of Array, @machine.contents
    assert_equal "a1", @machine.contents.first.first.first
  end



end
