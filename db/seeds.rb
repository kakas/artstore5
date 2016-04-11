u = User.new
u.email = "test@test.com"
u.password = "asdfasdf"
u.password_confirmation = "asdfasdf"
u.is_admin = true
u.save

5.times do |n|
  p = Product.new
  p.title = "測試產品#{n}號"
  p.description = "測試中"
  p.quantity = n
  p.price = n * 10
  p.save
end
