class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.text :summary
      t.references :hike, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
