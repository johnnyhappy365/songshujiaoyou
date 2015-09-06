require 'rails_helper'

describe "category", :type => :model do
  before :each do
    build_all_categories
  end

  it "should have sub categories" do
    expect(@com_category.sub_categories.size).to eq 3
    expect(@mg_category.sub_categories.size).to eq 2
  end

  it "should return top categories list" do
    categories = Category.top_categories
    p categories
    expect(categories.size).to eq 2
  end

  def build_all_categories
    @com_category = FactoryGirl.create :com_category
    @mg_category = FactoryGirl.create :mg_category
  end
end