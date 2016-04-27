class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.text :summary

      t.timestamps null: false
    end
  end
end
