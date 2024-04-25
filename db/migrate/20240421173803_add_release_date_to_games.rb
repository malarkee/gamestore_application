class AddReleaseDateToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :release_date, :date
  end
end
