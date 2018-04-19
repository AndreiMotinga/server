FactoryBot.define do
  factory :post_tag do
    post
    tag
  end

  factory :tag do
    name { Faker::Lorem.word }
  end

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

  factory :user do
    email { Faker::Internet.email }
    provider :email
    password { Faker::Internet.password }
    password_confirmation { password }
  end
end
