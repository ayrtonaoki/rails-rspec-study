FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { 'admin@example.com' }
  end
end
