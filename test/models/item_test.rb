require_relative '../test_helper'
require 'minitest/autorun'
require 'ostruct'
require_relative '../../app/repos/item_repository'
require_relative '../../app/repos/adapters/in_memory_item'

class ItemTest < ActiveSupport::TestCase
  def setup
    @item = repo.all.first
  end
  
  def test_is_item_active
    assert_nil @item.type
  end
  
  private
  
  def repo
    ItemRepository.new
    #ItemRepository.new(Adapters::InMemoryItem.new([circuit_backpack]))
  end
  
  def circuit_backpack
    OpenStruct.new(
      name: "ULA Circuit",
      type_id: "",
      description: "This is a crazy light backpack",
      weight: 1.5,
      url: "",
      cost: "",
      is_owned: true,
      purchased_on: "2015-04-01",
      notes: "Bought from Massdrop",
      deleted_on: "2015-04-02"
    )
  end
end
