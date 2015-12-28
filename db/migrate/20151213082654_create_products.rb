class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pname
      t.text :desc
      t.boolean :status, default: '0', null: false
      t.boolean :lang, default: '0', null: false
      t.boolean :privacy, default: false, null: false

      t.timestamps null: false
    end
  end
end
