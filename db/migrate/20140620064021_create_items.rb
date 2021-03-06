class CreateItems < ActiveRecord::Migration
  def change
    create_table :items, id: :uuid do |t|
      t.string :color
      t.string :clothing_type
      t.string :picture
      t.boolean :favorite
      t.uuid :collection_id, index: true
      
      t.timestamps
    end
  end
end
