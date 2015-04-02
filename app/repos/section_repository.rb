require_relative 'paranoid_repository'

class SectionRepository
  include ParanoidRepository

  def initialize(db = Section, item_repo = ItemRepository.new, category_repo = CategoryRepository.new)
    super(db)
    @item_repo = item_repo
    @category_repo = category_repo
  end
  
  def items(section)
    item_repo.all_for_section(section)
  end
  
  def categories(section)
    category_repo.all_for_section(section)
  end
  
  def add_category(section, params)
    category_repo.create(params.merge(section: section))
  end
  
  private
  
  attr_reader :item_repo, :category_repo
end
