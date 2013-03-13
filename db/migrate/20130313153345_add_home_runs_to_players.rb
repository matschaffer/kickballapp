class AddHomeRunsToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :home_runs, :integer
  end
end
