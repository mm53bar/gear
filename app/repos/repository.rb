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
    coerce(object).update(params)
  end

  def destroy(object)
    coerce(object).destroy
  end

  def create(params)
    adapter.create(params)
  end
  
  private

  attr_reader :adapter
  
  def coerce(object_or_id)
    if object_or_id.respond_to? :id
      object_or_id
    else
      find(object_or_id)
    end
  end
end
