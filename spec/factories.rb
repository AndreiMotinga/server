FactoryBot.define do
  factory :post do
    title { Faker::Lorem.sentence(1) }
    author { Faker::Name.title }
    body { Faker::Lorem.paragraph(5) }
  end
end
