class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :home_team
      t.belongs_to :away_team
      t.belongs_to :venue
      t.datetime :starts_at

      t.timestamps
    end
    add_index :games, :home_team_id
    add_index :games, :away_team_id
    add_index :games, :venue_id
  end
end
