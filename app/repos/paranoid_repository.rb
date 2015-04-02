require_relative 'repository'

module ParanoidRepository
  include Repository
  
  def all
    super.where deleted_at: nil
  end
  
  def destroy(object)
    object.touch :deleted_at
  end
end
