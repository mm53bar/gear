require_relative '../test_helper'

class ItemRepositoryTest < ActiveSupport::TestCase
  def setup
    @repo = ItemRepository.new
  end
  
  def test_retrieving_all_only_retrieves_active_items
    assert_equal 2, @repo.all.count
    @repo.destroy(items(:circuit_backpack).id)
    assert_equal 1, @repo.all.count
  end
end
