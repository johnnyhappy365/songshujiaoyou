FactoryGirl.define do
  factory :category do
    factory :com_category do
      title 'computer'
      after(:create) do |parent|
        create(:se_category, :parent => parent)
        create(:pl_category, :parent => parent)
        create(:other_category, :parent => parent)
      end
    end
    factory :se_category do
      title '软件工程'
      after(:create) do |category|
        create(:hacker_painter_book, :category => category)
      end
    end
    factory :pl_category do
      title '编程语言'
      after(:create) do |category|
        create(:refractor_book, :category => category)
        create(:ruby_metaprogramming_book, :category => category)
        create(:rails_way_book, :category => category)
        create(:programmer_book, :category => category)
      end
    end
    factory :other_category do
      title 'other'
      after(:create) do |category|
        create(:rework_book, :category => category)
      end
    end
    factory :mg_category do
      title '管理'
      after(:create) do |parent|
        create(:time_mg_category, :parent => parent)
        create(:pj_mg_category, :parent => parent)
      end
    end
    factory :time_mg_category do
      title '时间管理'
    end
    factory :pj_mg_category do
      title '项目管理'
    end
  end
end