json.extract! game, :id, :title, :desc, :publisher, :developer, :genre, :platform, :age_rating, :created_at, :updated_at
json.url game_url(game, format: :json)
