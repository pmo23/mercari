crumb :root do
  link "メルカリ", root_path
end

crumb :user do |user|
  link "マイページ", user_path(current_user)
  parent :root
end

crumb :list do |list|
  link "出品したやつ"
  parent :user
end

crumb :confirmation do |confirmation|
  link "本人情報"
  parent :user
end

crumb :profile do |profile|
  link "プロフィール"
  parent :user
end

crumb :card do |card|
  link "支払い方法"
  parent :user
end

crumb :product do |product|
  link "商品詳細", products_path(product)
  parent :root
end

