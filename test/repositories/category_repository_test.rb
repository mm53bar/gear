require_relative '../test_helper'

class CategoryRepositoryTest < ActiveSupport::TestCase
  def setup
    @repo = CategoryRepository.new
  end
  
  def test_retrieval_of_associated_items
    category = categories(:backpack)
    assert_equal category.items.count, @repo.items(category.id).count
  end
end
