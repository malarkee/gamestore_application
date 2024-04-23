class AddDefaultToScoreAverage < ActiveRecord::Migration[7.1]
  def up
    change_column_default :games, :average_score, 0
  end

  def down
    change_column_default :games, :average_score, nil
  end
end
