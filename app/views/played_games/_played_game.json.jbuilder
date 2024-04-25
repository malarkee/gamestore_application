json.extract! played_game, :id, :user_id, :game_id, :created_at, :updated_at
json.url played_game_url(played_game, format: :json)
