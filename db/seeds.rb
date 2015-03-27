User.delete_all
Category.delete_all
Product.delete_all
Review.delete_all

admin = FactoryGirl.create(:user, admin: true, password: "administrator")
category = FactoryGirl.create(:category, name: "Stuff")
product = FactoryGirl.create(:product, user: admin, category: category)

FactoryGirl.create(:review, user: admin, product: product)

puts "Admin user: #{admin.email} / administrator"

4.times do
  FactoryGirl.create(:user, password: "administrator")
end
