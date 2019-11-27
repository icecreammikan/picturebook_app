class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name, null: true
      t.string :img, null: true
      t.text :review, null: false
      t.references :book
    end
  end
end
