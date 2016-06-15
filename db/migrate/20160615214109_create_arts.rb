class CreateArts < ActiveRecord::Migration[5.0]
  def change
    create_table :arts do |t|
      t.string :name
      t.string :description
      t.string :img_link
      t.integer :user_id
      t.timestamps
    end
  end
end
