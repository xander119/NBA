class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :title
      t.string :photo

      t.timestamps
    end
  end
end
