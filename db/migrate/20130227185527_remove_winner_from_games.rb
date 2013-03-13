class RemoveWinnerFromGames < ActiveRecord::Migration
  def up
    remove_column :games, :name
  end

  def down
    add_column :games, :name, :string
  end
end
