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
  
  def test_adding_new_category
    params = {name: "Diaper"}
    @repo.add_category(sections(:worn_carried), params)
    category_names = @repo.categories(sections(:worn_carried)).map &:name
    assert_includes category_names, "Diaper"
  end
end
