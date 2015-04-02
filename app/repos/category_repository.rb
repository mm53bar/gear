require_relative 'paranoid_repository'

class CategoryRepository
  include ParanoidRepository

  def initialize(db = Category)
    super
  end
end
