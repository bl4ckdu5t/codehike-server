class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.references :trail, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
