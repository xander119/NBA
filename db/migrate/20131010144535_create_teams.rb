class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :division_id
      t.string :name
      t.string :generalManageer
      t.string :city
      t.string :arena
      t.string :yearfounded
	  t.string :logo
	  
      t.timestamps
    end
  end
end
