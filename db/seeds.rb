User.create!(email: "ruti@sb.com", password: "password", name: "Ruti", bio: "I am the first user of this Twitter Clone app!")

Tweet.create!(user_id: 1, text: "This is a Tweet!")

10.times do
  Tweet.create!(user_id: 1, text: Faker::Lorem.characters(100))
end
