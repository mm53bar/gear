require_relative '../test_helper'

class ItemRepositoryTest < ActiveSupport::TestCase
  def setup
    @repo = ItemRepository.new
  end
  
  def test_retrieving_all_only_retrieves_active_items
    backpack = items(:circuit_backpack) 
    assert_equal 3, @repo.all.count
    assert_nil backpack.deleted_at
    @repo.destroy(backpack)
    
    backpack = @repo.find(backpack.id)
    refute_nil backpack.deleted_at
    assert_equal 2, @repo.all.count
  end
end
