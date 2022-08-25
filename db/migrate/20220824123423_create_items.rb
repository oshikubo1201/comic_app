class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :items_name, null: false
      t.string  :publisher, null: false
      t.text    :recommendation, null: false
      t.integer :genre_1_id, null: false
      t.integer :genre_2_id, null: false
      t.integer :genre_3_id, null: false
      t.references :user,   null:false, foreign_key: true




      t.timestamps
    end
  end
end
