class Item < ActiveRecord::Base
  belongs_to :category

  enum location: [ :packed, :worn ]
end
