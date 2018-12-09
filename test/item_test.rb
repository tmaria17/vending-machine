require 'minitest/autorun'
require 'minitest/pride'
require './lib/item.rb'

class ItemTest < Minitest::Test
  def setup
    @item_data = {
        "type" => "Snickers"
    }

    @item = Item.new(@item_data)
  end

  def test_it_exists
    assert_instance_of Item, @item
  end
end
