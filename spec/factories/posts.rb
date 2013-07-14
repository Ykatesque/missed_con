# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    summary "MyText"
    url "MyString"
    published_at "2013-07-10 21:42:19"
    guid "MyString"
  end
end
