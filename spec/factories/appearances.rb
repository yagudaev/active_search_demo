FactoryBot.define do
  factory :appearance do
    association :participant
    association :title
    role { :actor }
  end
end
