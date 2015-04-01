require_relative 'repository'

class ItemRepository
  include Repository

  def initialize(db = Item)
    super
  end
  
  def all
    super.where.not deleted_at: nil
  end
end
