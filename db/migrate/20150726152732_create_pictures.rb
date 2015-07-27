class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :template
      t.string :url

      t.timestamps null: false
    end
  end
end
