class HomeController < ApplicationController
  def index
    best_number = 6
    @my_best_books = Book.best_recommendation_by_me best_number
    @douban_best_books = Book.best_recommendation_by_douban best_number
    @categories = Category.top_categories
  end
end
