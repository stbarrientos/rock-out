class CreateUserBands < ActiveRecord::Migration
  def change
    create_table :user_bands do |t|
      t.references :user
      t.references :band
    end
  end
end
