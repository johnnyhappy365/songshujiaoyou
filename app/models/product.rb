class Product < ActiveRecord::Base
  has_many :recommendations
  belongs_to :category
end
