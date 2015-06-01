
location = Location.create(address: '63 Wall St.', city: 'New York', zipcode: '10005' )

game_type = GameType.create(name: 'Poker', min_num_players: 2, how_to_play_link: 'http://www.pokernews.com/poker-rules/texas-holdem.htm')

Game.create(name: "test_game", game_type_id: game_type.id, location_id: location.id, description: "TEST TEST TEST", date: Time.now)
