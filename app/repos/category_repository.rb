require_relative 'paranoid_repository'

class CategoryRepository
  include ParanoidRepository

  def initialize(db = Category, item_repo = ItemRepository.new)
    super(db)
    @item_repo = item_repo
  end
  
  def items(id)
    item_repo.all_for_category(find(id))
  end
  
  private
  
  attr_reader :item_repo
end
