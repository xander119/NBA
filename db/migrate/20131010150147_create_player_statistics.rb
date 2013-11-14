class CreatePlayerStatistics < ActiveRecord::Migration
  def change
    create_table :player_statistics do |t|
      t.integer :player_id
      t.decimal :ppg
      t.decimal :rpg
      t.decimal :apg

      t.timestamps
    end
  end
end
