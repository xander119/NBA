class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.integer :team_id
      t.string :name
      t.string :nationality
      t.string :yearsExperience

      t.timestamps
    end
  end
end
