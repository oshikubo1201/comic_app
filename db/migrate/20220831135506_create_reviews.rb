class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :user,   null:false, foreign_key: true
      t.references :item,   null:false, foreign_key: true
      t.string     :review, null:false
      t.integer    :score,  null:false

      t.timestamps
    end
  end
end
