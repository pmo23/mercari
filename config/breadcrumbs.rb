crumb :root do
  link "メルカリ", root_path
end

crumb :user do |user|
  link "マイページ", users_path(user)
  parent :root
end

crumb :product do |product|
  link "カテゴリ一覧", products_path(product)
  parent :root
end
