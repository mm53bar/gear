require_relative 'paranoid_repository'

class ItemRepository
  include ParanoidRepository

  def initialize(db = Item)
    super
  end
end
