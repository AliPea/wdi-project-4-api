u1 = User.create!({
  username: "alex",
  first_name: "Alex",
  last_name: "Chin",
  email: "alex@alex.com",
  password: "password",
  password_confirmation: "password"
})

u2 = User.create!({
  username: "dan",
  first_name: "Dan",
  last_name: "theMan",
  email: "dan@dan.com",
  password: "password",
  password_confirmation: "password"
})

u3 = User.create!({
  username: "will",
  first_name: "Will",
  last_name: "Marples",
  email: "will@will.com",
  password: "password",
  password_confirmation: "password"
})

d1 = u1.drinks.create!(name: "Budweiser", quantity: 3, units: 2, price: 3.00)
d2 = u2.drinks.create!(name: "Blue Moon", quantity: 4, units: 2, price: 3.00)
d3 = u1.drinks.create!(name: "Pyramid", quantity: 6, units: 2, price: 3.00)
d4 = u3.drinks.create!(name: "Anchor Steam", quantity: 2, units: 2, price: 3.00)
