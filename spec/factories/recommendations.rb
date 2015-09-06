FactoryGirl.define do
  factory :recommendation do
    factory :daouban1_recmd do
      source 'douban'
      score '8'
      description '这是一本书非常不错的书'
    end
    factory :daouban2_recmd do
      source 'douban'
      score '8.5'
      description '这是一本书非常不错的书'
    end
    factory :daouban3_recmd do
      source 'douban'
      score '9'
      description '这是一本书非常不错的书'
    end
    factory :daouban4_recmd do
      source 'douban'
      score '1'
      description '这是一本书非常不错的书'
    end
    factory :daouban5_recmd do
      source 'douban'
      score '4'
      description '这是一本书非常不错的书'
    end
    factory :daouban6_recmd do
      source 'douban'
      score '3'
      description '这是一本书非常不错的书'
    end
    factory :my1_recmd do
      source 'me'
      score '9.5'
      description '这是一本书非常不错的书'
    end
    factory :my2_recmd do
      source 'me'
      score '7.5'
      description '这是一本书非常不错的书'
    end
    factory :my3_recmd do
      source 'me'
      score '3.5'
      description '这是一本书非常不错的书'
    end
  end
end