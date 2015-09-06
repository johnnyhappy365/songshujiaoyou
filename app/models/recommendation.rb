class Recommendation < ActiveRecord::Base
  belongs_to :product
  scope :best_from, lambda { |from| where("source = ?", from)}
  scope :best_douban, lambda { |number| best_from('douban').order('score' => :desc).limit(number) }
  scope :best_mine, lambda { |number| best_from('me').order('score' => :desc).limit(number) }
end
