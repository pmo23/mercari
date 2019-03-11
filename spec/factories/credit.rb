FactoryBot.define do

  factory :credit do
    id                    {"#{Faker::Number.number(1)}"}
    token                 {"#{Faker::Number.number(16)}"}
    user_id               {"#{Faker::Number.number(1)}"}
    created_at            {"#{Faker::Date.backward(14)}"}
    updated_at            {"#{Faker::Date.backward(14)}"}
  end

end
