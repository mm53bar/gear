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

  def update(id, params)
    find(id).tap do |object|
      object.update(params)
    end
  end

  def destroy(id)
    find(id).destroy
  end

  def create(params)
    adapter.create(params)
  end
  
  private

  attr_reader :adapter
end
