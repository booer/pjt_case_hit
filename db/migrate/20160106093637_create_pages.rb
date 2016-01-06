class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :about_cn
      t.text :about_en

      t.timestamps null: false
    end
  end
end
