class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.datetime :starts_at
      t.datetime :ends_at
      t.belongs_to :location
      t.belongs_to :home_team
      t.belongs_to :away_team

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
