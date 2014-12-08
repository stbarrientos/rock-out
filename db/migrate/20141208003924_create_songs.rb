class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.references :band
      t.string :artist
      t.string :title
      t.text :sound_url
    end
  end
end
