class CreateArtSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :art_spaces do |t|
      t.date :start_date
      t.date :end_date
      t.references :art, index: true
      t.references :space, index: true

      t.timestamps
    end
  end
end
