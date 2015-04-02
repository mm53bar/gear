class Category < ActiveRecord::Base
  belongs_to :section
  has_many :items
end
