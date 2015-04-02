require_relative '../test_helper'

class SectionRepositoryTest < ActiveSupport::TestCase
  def setup
    @repo = SectionRepository.new
  end
  
  def test_retrieval_of_associated_items
    section = sections(:packing)
    assert_equal section.items.count, @repo.items(section).count
  end
  
  def test_retrieval_of_associated_categories
    section = sections(:packing)
    assert_equal section.categories.count, @repo.categories(section).count
  end
end
