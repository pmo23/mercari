FactoryBot.define do

  factory :product do
    id                     {"#{Faker::Number.number(1)}"}
    name                   {"モンベル スペリオダウンジャケット XL"}
    product_description    {"高品質ダウンと超軽量シェル素材を組み合わせ、保温性と軽量性を高次元で両立したジャケットです。"}
    category1              {"メンズ"}
    category2              {"ジャケット/アウター"}
    category3              {"ダウンジャケット"}
    brand                  {"モンベル"}
    size                   {"XL"}
    condition              {"未使用に近い"}
    postage                {"送料込み(出品者負担)"}
    shipping_method        {"未定"}
    ship_from              {"福岡県"}
    shipping_date          {"1~2日で発送"}
    price                  {"#{Faker::Number.number(4)}"}
    point                  {"#{Faker::Number.number(2)}"}
    on_display             {"true"}
    during_trading         {"false"}
    sold_out               {"false"}
    created_at             {"#{Faker::Date.backward(14)}"}
    updated_at             {"#{Faker::Date.backward(14)}"}
  end
end
