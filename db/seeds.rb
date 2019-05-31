puts "Cleaning Database"

User.destroy_all
puts "#{User.count} Users!"

Product.destroy_all
puts "#{Product.count} Products!"

Order.destroy_all
puts "#{Order.count} Orders!"

# CRIAR USUÁRIOS \/

puts "Creating Fake user with 5 Fake Cars"
user = User.new(
  email: "roberto@barros.com",
  password: "thanos"
  )

if user.save
  puts "#{User.last.email} was created, with #{User.last.password}"
else
  puts "========== Something went wrong =========="
  puts "===== #{user.errors.messages} ====="
end

user = User.new(
  email: "carlos@garcia.com",
  password: "thanos"
  )

if user.save
  puts "#{User.last.email} was created, with #{User.last.password}"
else
  puts "========== Something went wrong =========="
  puts "===== #{user.errors.messages} ====="
end

user = User.new(
  email: "elon@musk.com",
  password: "thanos"
  )

if user.save
  puts "#{User.last.email} was created, with #{User.last.password}"
else
  puts "========== Something went wrong =========="
  puts "===== #{user.errors.messages} ====="
end

# CRIAR CARROS \/

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

  car.user = User.last
  car.remote_photo_url = "https://onlyusedtesla.com/wp-content/uploads/2019/04/cover-main4-1-1024x768.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# --------------------

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
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "MODEL 3 P3D SILVER",
    description: "2018 Used Tesla Model P3D
Dual Motor All Wheel Drive
Long Range PERFORMANCE Model 3
Midnight Silver Metallic
18″ Aero Wheels
Premium Interior
",
    price: rand(50_000..100_000),
    category: "Model 3"
    )

  car.user = User.last
  car.remote_photo_url = "https://onlyusedtesla.com/wp-content/uploads/2019/05/cover2-1024x768.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ----------------------

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

  car.user = User.last
  car.remote_photo_url = "https://static.interestingengineering.com/images/SEPTEMBER/sizes/Tesla_Semi_3_resize_md.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ----------------------

  car = Product.create(
    name: "BYTON M-BYTE BLACK",
    description: "Conventional automotive styling features are giving way to innovative design icons.
    Side-view cameras replace side mirrors, iconic face recognition cameras
    provide user identification and BYTON Smart Surfaces show a situation-based interacting light design.
    These are just some of the intelligent signature elements that reinforce the visible
    digital power of the vehicle.",
    price: rand(50_000..100_000),
    category: "semi"
    )

  car.user = User.first
  car.remote_photo_url = "https://content.autotrader.com/content/dam/autotrader/articles/OversteerImages/2018/August/byton/1.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "CHEVROLET BOLT 2019",
    description: "Powertrain: 200 HP
Dimensions: 4.166 mm C x 1.765 mm L x 1.595 mm A
Max speed: 145 km/h
Thrust de 0 a 100 km/h: 6,5 sec
Peso: 1.616 kg
Transmission: Automatic",
    price: rand(50_000..100_000),
    category: "BOLT"
    )

  car.user = User.first
  car.remote_photo_url = "https://f55ff981c29d315c8a1f-4d8875650ec84b25850d5b6d643fa0d7.ssl.cf1.rackcdn.com/1G1FW6S03K4101269/f8c7d24dd9b00b8c716f63706b1c6f51.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "RENAULT ZOE 2019",
    description: "Max speed: 135 km/h
Powertrain: 92 HP
Thrust de 0 a 100 km/h: 13,2 segundos
Dimensions: 4.084 mm C x 1.730 mm L x 1.562 mm A
Vol: Basic: 338 l / Retracted seats: 1.225 l",
    price: rand(100_000..300_000),
    category: "ZOE"
    )

  car.user = User.first
  car.remote_photo_url = "https://www.razaoautomovel.com/wp-content/uploads/2018/02/ZOE-ZE-40-CR-4-e1518782912600_925x520_acf_cropped-1.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "BYD E5",
    description: "With the help of up to 300 km in a single recharge, the new e5 has performance from 0-100 in up to 9 seconds.
    Equipped with Lithium Iron Phosphate battery
    technology, fast, BMS (Battery Management System) system, fully charges up to 1.5 h.",
    price: rand(50_000..100_000),
    category: "BYD"
    )

  car.user = User.first
  car.remote_photo_url = "https://conteudo.imguol.com.br/c/entretenimento/6a/2017/09/08/byd-e5-1504877777414_v2_1920x1279.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "KIA SOUL EV BLACK",
    description: "KIA e-Soul is the third generation of the Korean automaker's urban crossover.
    After two generations KIA withdrew the car from Europe, but now it returns as an EV
    along with Hyundai Kona Electric and KIA e-Niro. KIA e-Soul comes with 39 or 64 kWh batteries.
    The former give KIA e-Soul 289 km range, and the latter more than 450 km.",
    price: rand(50_000..100_000),
    category: "KIA"
    )

  car.user = User.first
  car.remote_photo_url = "https://hips.hearstapps.com/hmg-prod/amv-prod-cad-assets/wp-content/uploads/2016/09/2016-Kia-Soul-EV-111.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end

# ---------------------

  car = Product.create(
    name: "HYUNDAI KONA ELETRIC SILVER",
    description: "Long driving range of 258 miles
Quick acceleration and sharp handling make it fun to drive
Comfortable and quiet cabin
Plenty of standard tech features
Tight rear legroom
Availability limited to just a few states",
    price: rand(50_000..100_000),
    category: "KIA"
    )

  car.user = User.first
  car.remote_photo_url = "https://images.hgmsites.net/hug/2019-hyundai-kona-electric_100675192_h.jpg"

if car.save
  puts "#{car.name} from #{car.user.email} created!"
else
  puts "========== Something went wrong =========="
  puts "===== #{car.errors.messages} ====="
end
