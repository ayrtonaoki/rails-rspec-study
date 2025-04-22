FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "##{n}" }
    user
  end
end
