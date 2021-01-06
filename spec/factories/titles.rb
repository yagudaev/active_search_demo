FactoryBot.define do
  factory :title do
    name { 'Die Hard' }
    type { :movie }
    release_year { 1999 }
    duration_in_minutes { 120 }
    description { 'Happy christmas movie' }
  end
end
