FactoryBot.define do
  factory :plan do
    stripeid "MyString"
    name "MyString"
    price 1
  end
  factory :post do
    title { Faker::Lorem.sentence(1) }
    author { Faker::Name.title }
    body { Faker::Lorem.paragraph(5) }
  end
end
