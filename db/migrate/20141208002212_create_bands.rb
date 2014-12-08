class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :motto
      t.text :picture_url
    end
  end
end
