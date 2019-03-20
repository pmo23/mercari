FactoryBot.define do
  factory :address do
    id                    { "#{Faker::Number.number(1)}" }
    zip_code              { "#{Faker::Number.number(7)}" }
    prefecture            { "#{Faker::Number.number(2)}" }
    cuty                  { "#{Faker::Number.number(1)}" }
    address1              { "#{Faker::Number.number(1)}" }
    address2              { "#{Faker::Number.number(1)}" }
    phone_number          { "#{Faker::Number.number(11)}" }
    user_id               { "1" }
    created_at            { "#{Faker::Date.backward(14)}" }
    updated_at            { "#{Faker::Date.backward(14)}" }
  end
end
