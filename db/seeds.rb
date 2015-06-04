
location = Location.create(address: '63 Wall St.', city: 'New York', zipcode: '10005' )

game_type = GameType.create(name: 'Poker', min_num_players: 2, how_to_play_link: 'http://www.pokernews.com/poker-rules/texas-holdem.htm')

Game.create(name: "test_game", game_type_id: game_type.id, location_id: location.id, description: "TEST TEST TEST", date: Time.now)

Game.create(name: "test_game_2", game_type_id: game_type.id, location_id: location.id, description: "This is my second test", date: Time.now)

User.create!(username: "Frank",
             email: "frankdaedalus@gmail.com",
             password: "password",
             password_confirmation: "password",
             cohort: "RockDoves",
             advice_tweet: "Scared money don't make money!")


10.times do |n|
  name = Faker::Name.name
  tweet = Faker::Lorem.sentence
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(username: name,
             email: email,
             password: "password",
             password_confirmation: "password",
             cohort: Faker::Lorem.word,
             advice_tweet: "I am a dummy account")
end

10.times do |n|
  user = User.all.sample
  game = Game.all.sample
  game.games_users.create(user_id: user.id)
end

