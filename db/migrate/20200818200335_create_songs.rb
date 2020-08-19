class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title
      t.integer :release_year
      t.string :genre
      t.string :album
      t.belongs_to :playlist, foreign_key: true

      t.timestamps
    end
  end
end
