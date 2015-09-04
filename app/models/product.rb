class Product < ActiveRecord::Base
  has_many :recommendations
end
