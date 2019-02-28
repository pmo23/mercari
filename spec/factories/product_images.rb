FactoryBot.define do

  factory :product_image do
    product
    id                     {"#{Faker::Number.number(1)}"}
    product_id             {"#{Faker::Number.number(1)}"}
    product_image          {"#{Faker::Avatar.image}" }
    created_at             {"#{Faker::Date.backward(14)}"}
    updated_at             {"#{Faker::Date.backward(14)}"}
  end
end
