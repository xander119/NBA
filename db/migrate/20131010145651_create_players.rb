class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :team_id
      t.integer :jerseynumber
      t.string :name
      t.integer :yearspro
      t.integer :height
      t.integer :weight
      t.integer :rookieyear
      t.string :nationality
	  t.integer :position_id
	  
      t.timestamps
    end
  end
end
