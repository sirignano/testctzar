class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :text1
      t.text :text2
      t.text :text3
      t.string :pic1
      t.string :pic2
      t.string :pic3
      t.string :button1
      t.string :button2
      t.integer :ref
      t.references :user
      
      t.timestamps null: false
    end
  end
end
