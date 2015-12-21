# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
20.times do |i|
  User.create(username: "user#{i+1}", email: "user#{i+1}@example.com", 
       password: "password#{i+1}", age: i+1, sex: i.odd? ? "male" : "female")
end

200.times do |i|
  Order.create(status: i.odd? ? 1 : 2, reward: 1000 + i*100, deadline: Time.now)
end

3.times do |i|
  order1 = Order.where(:user_id => nil).first
  order2 = Order.where(:user_id => nil).second
  order3 = Order.where(:user_id => nil).third
  User.first.orders << order1
  User.second.orders << order2
  User.third.orders << order3
end