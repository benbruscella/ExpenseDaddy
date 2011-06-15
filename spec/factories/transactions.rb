# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
      user_id 1
      when "2011-06-06 23:17:24"
      amount 1.5
      description "MyString"
    end
end