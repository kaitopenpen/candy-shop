class CreateSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :sweets do |t|
      t.string :name
      t.integer :price
      t.integer :genre
      t.datetime :release_date
      t.datetime :end_date
      t.integer :limited

      t.timestamps
    end
  end
end
