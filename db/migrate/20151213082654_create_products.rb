class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pname
      t.text :desc
      t.boolean :privacy, default: false, null: false

      t.timestamps null: false
    end
  end
end
