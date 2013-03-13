class AddScoresToGames < ActiveRecord::Migration
  def change
    add_column :games, :home_score, :integer
    add_column :games, :away_score, :integer
  end
end
