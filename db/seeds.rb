puts "Creating Fake user with 5 Fake Cars"
user = User.new(
  email: "dot.dot@at.dot.com",
  password: "ElonMuskRocksBoy!"
  )

if user.save
  puts "#{User.first.email} was created, with #{User.first.password}"
else
  puts "========== Something went wrong =========="
  puts "===== #{user.errors.messages} ====="
  gets
end

5.times do |n|
  car = Product.new(
    name: "Car - ##{n + 1}",
    description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Placeat reprehenderit dolorum ducimus. Tempore quasi assumenda saepe error beatae accusantium.",
    price: rand(50_000..100_000),
    category: "Car"
    )

  car.user = User.first

  if car.save
    puts "#{car.name} created!"
  else
    puts "========== Something went wrong =========="
    puts "===== #{car.errors.messages} ====="
  end
end
