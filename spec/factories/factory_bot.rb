FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'password' }
  end
end

FactoryBot.define do
  factory :transaction do
    name { 'Example Transaction' }
    amount { 35.0 }
    association :user
  end
end

FactoryBot.define do
  factory :category do
    sequence(:name) { |_n| "Category #{n}" }
    name { 'Example Category' }
    icon { 'Icon' }
    association :user
  end
end
