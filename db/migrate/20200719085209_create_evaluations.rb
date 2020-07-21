class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|
      t.integer :point
      t.text :review
      t.references :sweet, foreign_key: true

      t.timestamps
    end
     add_index :evaluations, [:sweet_id, :created_at]
  end
end
