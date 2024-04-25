class ResetAllGameCacheCounters < ActiveRecord::Migration[7.1]
  
  def up
    Game.all.each do |game|
        Game.reset_counters(game.id, :reviews)
        end
  end

end
