class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pname
      t.text :desc
      t.text :detail
      t.text :feature
      t.string :pname_en
      t.text :desc_en
      t.text :detail_en
      t.text :feature_en
      t.string :image

      t.boolean :lang, default: '0', null: false

      t.timestamps null: false
    end
  end
end
