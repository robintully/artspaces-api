class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :location
      t.string :description
      t.string :img_link
      t.integer :user_id
      t.timestamps
    end
  end
end
