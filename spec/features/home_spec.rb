require 'rails_helper'

describe "home index", :type => :feature do
  before :each do
    build_data
    visit root_path
  end

  describe "header brand logo image", :type => :feature do
    it "should link to root path" do
      find(".brand-logo").click
      expect(page).to have_selector("#home-index")
    end
  end

  describe "douban recommended product list", :type => :feature do
    it "should display on content part of page" do
      within(".douban-comment") do
        expect(page).to have_content("豆瓣推荐")
      end  
      within(".douban-products") do
        expect(all('.book-wrap').size).to equal 6
      end
    end
  end

  describe "my recommended product list", :type => :feature do
    it "should display on content part of page" do
      within(".my-comment") do
        expect(page).to have_content("我的推荐")
      end  
      within(".my-products") do
        expect(all('.book-wrap').size).to eq 3
      end
    end
  end

  describe "category", :type => :feature do
    it "should display on sidebar of page" do
      within(".sidebar") do
        expect(all('.category1').size).to eq 1
        expect(all('.category2').size).to eq 2
        expect(all('.category2 a').first.text).to eq '软件工程'
      end  
    end
  end

  def build_data

    # book will be automatically created after categories creating
    build_all_categories
    # @hacker_painter_book = FactoryGirl.create :hacker_painter_book
    # @refractor_book = FactoryGirl.create :refractor_book
    # @ruby_metaprogramming_book = FactoryGirl.create :ruby_metaprogramming_book
    # @rails_way_book = FactoryGirl.create :rails_way_book
    # @programmer_book = FactoryGirl.create :programmer_book
    # @rework_book = FactoryGirl.create :rework_book
  end

  def build_all_categories
    @com_category = FactoryGirl.create :com_category
    @mg_category = FactoryGirl.create :mg_category
  end
end