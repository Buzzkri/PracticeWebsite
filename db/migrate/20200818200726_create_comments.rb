class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.integer :stars
      t.belongs_to :song, foreign_key: true

      t.timestamps
    end
  end
end
