User.destroy_all

u1 = User.create!({
  image: "http://fillmurray.com/g/200/300",
  username: "Nat",
  first_name: "Nat",
  last_name: "Huitson",
  email: "nat@nat.com",
  password: "password",
  password_confirmation: "password"
})

u2 = User.create!({
  image: "http://fillmurray.com/g/200/300",
  username: "Johnnie",
  first_name: "Johnnie",
  last_name: "de La Moriniere",
  email: "johnnie@johnnie.com",
  password: "password",
  password_confirmation: "password"
})

u3 = User.create!({
  image: "http://fillmurray.com/g/200/300",
  username: "Alfredo",
  first_name: "Alfredo",
  last_name: "Maria",
  email: "alfredo@alfredo.com",
  password: "password",
  password_confirmation: "password"
})

d1 = u1.drinks.create!(name: "Budweiser", quantity: 3, units: 2, price: 3.00 )
d2 = u2.drinks.create!(name: "Blue Moon", quantity: 4, units: 2, price: 3.00 )
d3 = u1.drinks.create!(name: "Meantime", quantity: 6, units: 2, price: 3.00 )
d4 = u3.drinks.create!(name: "Anchor Steam", quantity: 2, units: 2, price: 3.00 )

# [
#   { name: "Beer", image: "http://www.menshealth.com/sites/menshealth.com/files/styles/slideshow-desktop/public/images/slideshow2/beer-intro.jpg?itok=hhBQBwWj" },
#   { name: "Wine", image: "http://images.r.cruisecritic.co.uk/features/ships/top-25-tips/best-wine-hero.jpg" },
#   { name: "Gin and Tonic", image: "http://goodthingsmagazine.com/wp-content/uploads/2015/05/Gin-and-tonic.jpg" },
#   { name: "Cider", image: "http://www.nycider.com/images/hard-cider-lg.jpg" },
#   { name: "Rum and Coke", image: "http://search.chow.com/thumbnail/1280/800/www.chowstatic.com/assets/2015/02/10223_cuba_libre_3000.jpg" },
# ].each do |menu|
#   Menu.create!(menu)
# end
