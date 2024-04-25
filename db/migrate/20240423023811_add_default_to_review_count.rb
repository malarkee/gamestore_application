class AddDefaultToReviewCount < ActiveRecord::Migration[7.1]
  def up
    change_column_default :games, :reviews_count, 0
  end

  def down
    change_column_default :games, :reviews_count, nil
  end
end
