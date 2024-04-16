class Game < ApplicationRecord

    has_many :comments, dependent: :destroy
    has_many :played_games
    has_many :users, through: :played_games

end
