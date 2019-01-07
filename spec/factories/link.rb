FactoryBot.define do
  factory :link do
    url { Faker::Internet.url }
    description { Faker::Matz.quote }
    user
  end
end
