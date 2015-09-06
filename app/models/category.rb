class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Category'
  has_many :sub_categories, :foreign_key => 'parent_id', :class_name => 'Category'

  def self.top_categories
    where 'parent_id = ? ', 0
  end
end
