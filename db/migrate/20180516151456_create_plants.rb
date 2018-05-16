class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :photo_url
      t.references :garden, foreign_key: true, index: true

      t.timestamps
    end
  end
end
