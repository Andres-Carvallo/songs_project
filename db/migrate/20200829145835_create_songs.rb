class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :author
      t.integer :year
      t.string :genre

      t.timestamps
    end
  end
end
