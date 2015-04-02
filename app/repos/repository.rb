module Repository
  def initialize(adapter)
    @adapter = adapter
  end

  def find(id)
    adapter.find(id)
  end

  def all
    adapter.all
  end

  def update(object, params)
    object.update(params)
  end

  def destroy(object)
    object.destroy
  end

  def create(params)
    adapter.create(params)
  end
  
  private

  attr_reader :adapter
end
