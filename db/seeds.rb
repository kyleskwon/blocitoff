10.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password(6, 8)
  )
end
users = User.all

10.times do
  Item.create!(
    user: users.sample,
    name: Faker::Lorem.sentence
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
