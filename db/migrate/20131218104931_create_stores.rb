class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :category
      t.decimal :price
      t.integer :stocklevel
      t.date :startdate

      t.timestamps
    end
  end
end
