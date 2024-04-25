class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.text :desc
      t.string :publisher
      t.string :developer
      t.string :genre
      t.string :platform
      t.string :age_rating

      t.timestamps
    end
  end
end
