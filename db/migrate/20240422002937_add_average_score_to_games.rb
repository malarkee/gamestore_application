class AddAverageScoreToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :average_score, :decimal
  end
end
