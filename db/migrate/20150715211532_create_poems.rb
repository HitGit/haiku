class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.string :poem
      t.string :name
      t.references :user


      t.timestamps null: false
    end
  end
end
