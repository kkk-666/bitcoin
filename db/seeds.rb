# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Coin.create(name: 'aaa', symbol: 'AAA', price:30000)
PriceLog.create(price:300000, coin_id:1, high:300000, low:200000)
PriceLog.create(price:400000, coin_id:1, high:300000, low:200000)
PriceLog.create(price:500000, coin_id:1, high:300000, low:200000)
PriceLog.create(price:600000, coin_id:1, high:300000, low:200000)
PriceLog.create(price:700000, coin_id:1, high:300000, low:200000)

Coin.create(name: 'bbb', symbol: 'BBB', price:30000)