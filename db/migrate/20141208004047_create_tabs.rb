class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|
      t.references :song
      t.text :source_url
      t.float :rank
    end
  end
end
