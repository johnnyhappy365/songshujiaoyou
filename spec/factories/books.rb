FactoryGirl.define do
  factory :book do
    factory :hacker_painter_book do
      title '黑客与画家'
      image_url 'painter.jpg'
      description '本书是硅谷创业之父Paul Graham 的文集，主要介绍黑客即优秀程序员的爱好和动机，讨论黑客成长、黑客对世界的贡献以及编程语言和黑客工作方法等所有对计算机时代感兴趣的人的一些话题。书中的内容不但有助于了解计算机编程的本质、互联网行业的规则，还会帮助读者了解我们这个时代，迫使读者独立思考。
      本书适合所有程序员和互联网创业者，也适合一切对计算机行业感兴趣的读者。'
      after(:create) do |book|
        create(:daouban1_recmd, :product => book)
        create(:my1_recmd, :product => book)
      end
    end
    factory :refractor_book do
      title '重构'
      image_url 'refractor.jpg'
      description 'Martin Fowler和《重构:改善既有代码的设计》(中文版)另几位作者清楚揭示了重构过程，他们为面向对象软件开发所做的贡献，难以衡量。《重构:改善既有代码的设计》(中文版)解释重构的原理（principles）和最佳实践方式（best practices），并指出何时何地你应该开始挖掘你的代码以求改善。《重构:改善既有代码的设计》(中文版)的核心是一份完整的重构名录（catalog of refactoring），其中每一项都介绍一种经过实证的代码变换手法（code transformation）的动机和技术。某些项目如Extract Method和Move Field看起来可能很浅显，但不要掉以轻心，因为理解这类技术正是有条不紊地进行重构的关键。点击进入该书更多详细信息。'
      after(:create) do |book|
        create(:daouban2_recmd, :product => book)
        create(:my2_recmd, :product => book)
      end
    end
    factory :ruby_metaprogramming_book do
      title 'ruby元编程'
      image_url 'rubymetaprogramming.jpg'
      description '《Ruby元编程》以案例形式循序渐进讲解Ruby对象模型原理和高级应用技巧，堪称动态语言的设计模式。书中讲述的各种Ruby编程模式，完全可以应用于其他动态语言（甚至静态语言）。本书不仅适合Ruby程序员阅读，也适合对动态编程 语言和面向对象编程感兴趣的读者阅读。所有对程序设计理论感兴趣的人都能从中获益。Ruby之父松本行弘作序推荐。'
      after(:create) do |book|
        create(:daouban3_recmd, :product => book)
        create(:my3_recmd, :product => book)
      end
    end
    factory :rails_way_book do
      title 'Rails Way'
      image_url 'railsway.jpg'
      description '我没写'
      after(:create) do |book|
        create(:daouban4_recmd, :product => book)
      end
    end
    factory :programmer_book do
      title '程序员修炼之道'
      image_url 'programmer.jpg'
      description '我没写'
      after(:create) do |book|
        create(:daouban5_recmd, :product => book)
      end
    end
    factory :rework_book do
      title '重做'
      image_url 'rework.jpg'
      description '我没写'
      after(:create) do |book|
        create(:daouban6_recmd, :product => book)
      end
    end
  end
end