require_relative 'paranoid_repository'

class ItemRepository
  include ParanoidRepository

  def initialize(db = Item)
    super
  end
  
  def all_for_category(category)
    all.where category: category
  end
end
