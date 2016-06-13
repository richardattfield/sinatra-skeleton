class AddSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :URL
      t.string :artist
      t.string :title
      t.binary :mp3
      t.timestamps
    end
  end
end
