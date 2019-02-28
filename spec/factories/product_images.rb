FactoryBot.define do

  factory :product_image do
    product
    id                     {"1"}
    product_id             {"1"}
    product_image          { File.open("#{Rails.root}/spec/fixtures/images/test_image_1.jpg") }
    created_at             {"2019-02-20 06:41:22"}
    updated_at             {"2019-02-20 06:41:22"}
  end
end
