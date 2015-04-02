require_relative 'paranoid_repository'

class CategoryRepository
  include ParanoidRepository

  def initialize(db = Category, item_repo = ItemRepository.new)
    super(db)
    @item_repo = item_repo
  end
  
  def items(category)
    item_repo.all_for_category(category)
  end
  
  private
  
  attr_reader :item_repo
end
