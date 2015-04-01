module Adapters
    class InMemoryItem
      attr_accessor :db
     
      def initialize(db = [])
        @db = db
      end

      def find(id)
        db.find(id)
      end
    
      def all
        db
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
        orm_adapter.create(params)
      end      
    end
end