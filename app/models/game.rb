class Game < ApplicationRecord


    validates :title, presence: true, length: { maximum: 70 }
    validates :release_date, presence: true, comparison: { 
        greater_than_or_equal_to: Date.new(1970, 01, 01), 
        less_than_or_equal_to: Date.new(2025, 01, 01) 
    }
    validates :age_rating, inclusion: { in: %w(RP E E10+ T M A), allow_blank: true,
        message: "must be one of the following: Rating Pending (RP), Everyone (E), Everyone 10+ (E10+), Teen (T), Mature (M), Adults (A)"
    }

    has_many :comments, dependent: :destroy
    has_many :played_games
    has_many :users, through: :played_games


    has_one_attached :image
    has_many_attached :pictures

    def img_to_thumbnail
        image.variant(resize_to_limit: [300, 300]).processed
    end
    
    def pic_to_thumbnail(pic)
        pic.variant(resize_to_limit: [300, 300]).processed
    end

    def self.ransackable_attributes(auth_object = nil)
        ["age_rating", "developer", "genre", "platform", "publisher", "title"]
    end

    def self.ransackable_associations(auth_object = nil)
        ["comments", "played_games", "users"]
    end


end
