class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string  :items_name, null: false
      t.string  :publisher, null: false
      t.text    :recommendation, null: false
      t.integer :genre_1, null: false
      t.integer :genre_2, null: false
      t.integer :genre_3, null: false



      t.timestamps
    end
  end
end
