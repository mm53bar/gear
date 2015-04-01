require_relative '../test_helper'

class ItemRepositoryTest < ActiveSupport::TestCase
  def setup
    @repo = ItemRepository.new
  end
  
  def test_retrieving_all_only_retrieves_active_items
    assert_equal @repo.all.count, 1
  end
end
