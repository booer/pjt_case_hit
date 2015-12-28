class CreatePostCategories < ActiveRecord::Migration
  def change
    create_table :post_categories do |t|
      t.string :cname
      t.string :ename
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
