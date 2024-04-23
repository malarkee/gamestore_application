class AddReviewsCountToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :reviews_count, :integer
  end
end
