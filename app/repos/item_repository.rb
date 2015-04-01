require_relative 'repository'

class ItemRepository
  include Repository

  def initialize(db = Item)
    super
  end
  
  def all
    super.where deleted_at: nil
  end
  
  def destroy(id)
    find(id).touch :deleted_at
  end
end
