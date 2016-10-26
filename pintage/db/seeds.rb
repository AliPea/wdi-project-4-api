u1 = User.create!(username: "alex", first_name: "Alex", last_name: "Chin")
u2 = User.create!(username: "dan", first_name: "Dan", last_name: "theMan")
u3 = User.create!(username: "will", first_name: "Will", last_name: "Marples")

d1 = u1.drinks.create!(name: "Budweiser", quantity: '3')
d2 = u2.drinks.create!(name: "Blue Moon", quantity: '4')
d3 = u1.drinks.create!(name: "Pyramid", quantity: '6')
d4 = u3.drinks.create!(name: "Anchor Steam", quantity: '2')
