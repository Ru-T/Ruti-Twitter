User.create!(email: "ruti@sb.com",
            password: "password",
            name: "Ruti",
            bio: "I am the first user of this Twitter Clone app!")

3.times do
  User.create!(email: Faker::Internet.email,
              password: Faker::Internet.password(8),
              name: Faker::Name.name,
              bio: Faker::Lorem.sentence,
              )
end

10.times do
  Tweet.create!(user_id: rand(1...4),
                text: Faker::Lorem.characters(100)
                )
end
