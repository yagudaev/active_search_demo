FactoryBot.define do
  factory :participant do
    sequence(:first_name) { |n| "John-#{n}" }
    sequence(:last_name) { |n| "Doe-#{n}" }
  end
end
