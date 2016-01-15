User.create!(email: "ruti@sb.com",
            password: "password",
            name: "Ruti",
            bio: "I am the first user of this Twitter Clone app!")

20.times do
  User.create!(email: Faker::Internet.email,
              password: Faker::Internet.password(8),
              name: Faker::Name.name,
              bio: Faker::Lorem.sentence,
              )
end

50.times do
  Tweet.create!(user_id: rand(1...21),
                text: Faker::Lorem.sentence
                )
end

20.times do
  Follow.create!(follower_id: 1, followed_id: rand(2...21))
end

10.times do
  Follow.create!(follower_id: rand(1...10), followed_id: rand(11...21))
end
