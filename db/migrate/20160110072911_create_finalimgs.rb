class CreateFinalimgs < ActiveRecord::Migration
  def change
    create_table :finalimgs do |t|
      t.integer :product_id
      t.string :imga
      t.string :imgb
      t.string :imgc
      t.string :imgd

      t.timestamps null: false
    end
  end
end
