class Book < Product
  def my_recommendation_score
    rec = recommendations.find_by_source 'me'
    rec ? rec.score : 0
  end

  def douban_recommendation_score
    rec = recommendations.find_by_source 'douban'
    rec ? rec.score : 0
  end

  def self.best_recommendation_by_douban number
    Recommendation.best_douban(number).map &:product
  end

  def self.best_recommendation_by_me number
    Recommendation.best_mine(number).map &:product
  end
end
