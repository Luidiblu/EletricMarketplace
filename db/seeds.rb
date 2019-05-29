puts "Creating Fake user with 5 Fake Cars"
user = User.new(
  email: "admin@admin.com",
  password: "thanos"
  )

if user.save
  puts "#{User.first.email} was created, with #{User.first.password}"
else
  puts "========== Something went wrong =========="
  puts "===== #{user.errors.messages} ====="
end


  car = Product.create(
    name: "MODEL S P100DL SILVER",
    description: "2018 Used Tesla Model S P100DL
Model S P100DL
Midnight Silver Metallic Paint
Sunroof
21″ Sonic Carbon Twin Turbine Wheels
White Premium Interior
Dark Ask Wood Decor
Dark Headliner
Ludicrous Speed Upgrade",
    price: rand(50_000..100_000),
    category: "Model S"
    )

  car.user = User.first
  car.remote_photo_url = "https://onlyusedtesla.com/wp-content/uploads/2019/04/cover-main4-1-1024x768.jpg"

if car.save
  puts "#{car.name} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

  car = Product.create(
    name: "MODEL S 85D RED",
    description: "2015 Used Tesla Model S 85D. Raleigh, North Carolina.
AUTOPILOT 1
Dual Motor All Wheel Drive
Red Multi-Coat Paint
19” Wheels
Black Textile Seats
Piano Black Decor
Light Headliner
Supercharger Enabled
Tech Package
Power Liftgate
Illuminated Doors
CLEAN HISTORY
NO ACCIDENTS
NO PETS
NO SMOKING
4G LTE retrofitted which was a $700 upgrade
FREE SUPERCHARGING",
    price: rand(50_000..100_000),
    category: "Model S"
    )

  car.user = User.first
  car.remote_photo_url = "https://onlyusedtesla.com/wp-content/uploads/2019/05/cover-main2-1024x768.jpg"

if car.save
  puts "#{car.name} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

  car = Product.create(
    name: "MODEL 3 P3D SILVER",
    description: "2018 Used Tesla Model P3D
Dual Motor All Wheel Drive
Long Range PERFORMANCE Model 3
Midnight Silver Metallic
18″ Aero Wheels
Premium Interior
EAP NOT ENABLED. NEW OWNER MAY ENABLE WITH TESLA FOR A FEE
",
    price: rand(50_000..100_000),
    category: "Model 3"
    )

  car.user = User.first
  car.remote_photo_url = "https://onlyusedtesla.com/wp-content/uploads/2019/05/cover2-1024x768.jpg"

if car.save
  puts "#{car.name} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

  car = Product.create(
    name: "SEMI P59 SILVER",
    description: "emi is the safest, most comfortable truck ever. Four independent motors provide maximum power and acceleration and require the lowest energy cost per mile.
Acceleration 0-60 mph with 80k lb
20 sec
60 mph
Mile Range
300 or 500 miles
Powertrain
4 Independent Motors on Rear Axles
Energy Consumption
Less than 2 kWh per mile
Fuel Savings",
    price: rand(300_000..500_000),
    category: "semi"
    )

  car.user = User.first
  car.remote_photo_url = "https://static.interestingengineering.com/images/SEPTEMBER/sizes/Tesla_Semi_3_resize_md.jpg"

if car.save
  puts "#{car.name} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

  car = Product.create(
    name: "BYTON M-BYTE",
    description: "Conventional automotive styling features are giving way to innovative design icons.
    Side-view cameras replace side mirrors, iconic face recognition cameras
    provide user identification and BYTON Smart Surfaces show a situation-based interacting light design.
    These are just some of the intelligent signature elements that reinforce the visible
    digital power of the vehicle.",
    price: rand(100_000..300_000),
    category: "semi"
    )

  car.user = User.first
  car.remote_photo_url = "https://content.autotrader.com/content/dam/autotrader/articles/OversteerImages/2018/August/byton/1.jpg"

if car.save
  puts "#{car.name} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

