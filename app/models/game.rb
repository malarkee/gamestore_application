class Game < ApplicationRecord

    has_many :comments, dependent: :destroy
    has_many :played_games
    has_many :users, through: :played_games

    def self.ransackable_attributes(auth_object = nil)
        ["age_rating", "developer", "genre", "platform", "publisher", "title"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["comments", "played_games", "users"]
    end

end
