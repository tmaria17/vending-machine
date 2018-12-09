require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/reader.rb'
require './lib/slot.rb'



class SlotTest < Minitest::Test
  def setup
    @slot_data = {
        "capacity" => 10,
        "contents" => [
            {
                "type" => "Snickers"
            },
            {
                "type" => "Snickers"
            },
            {
                "type" => "Snickers"
            },
            {
                "type" => "Snickers"
            }
        ],
        "cost" => 100
    }

    @slot = Slot.new("a1", @slot_data)
  end

  def test_it_exists
    assert_instance_of Slot, @slot
  end

  def test_it_has_items
    item = @slot.items[0]
    assert_instance_of Item, item
  end
end
