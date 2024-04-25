class Review < ApplicationRecord
  belongs_to :game, counter_cache: true
  belongs_to :user
  
  validates :rating, numericality: { only_integer: true,
    greater_than_or_equal_to: 1, less_than_or_equal_to: 5
  }

  after_commit :update_score, on: [:create, :update]

  def update_score
    game.update_final_rating
  end


end
