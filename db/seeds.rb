# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
users = []
profiles = []

admin_user = User.new(
  email: "esco@gmail.com",
  password: "123456",
  username: "esco",
  admin: true
)

users.push(admin_user)

4.times do |x|
  puts users
  user = User.new(email: "test#{x + 1}@gmail.com", password: "123456", username: "test #{x + 1}", admin: false)
  users.push(user)

  3.times do |y|
    profile = user.profiles.new(name: "Test Name #{y + 1}", gender: rand(2), birthday: "29.02.2020", city: "Delhi", user_id: user.id)
    profiles.push(profile)
  end
end

admin_profile = admin_user.profiles.new(name: "Test Esco", gender: rand(2), birthday: "01.01.2001", city: "Tel Aviv", user_id: admin_user.id)
profiles << admin_profile

User.import(users)
Profile.import(profiles)
 
users.each do |user|
  User.reset_counters(user.id, :profiles_count)
end
