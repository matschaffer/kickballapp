class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.belongs_to :game
      t.belongs_to :user

      t.timestamps
    end
    add_index :tickets, :game_id
    add_index :tickets, :user_id
  end
end
