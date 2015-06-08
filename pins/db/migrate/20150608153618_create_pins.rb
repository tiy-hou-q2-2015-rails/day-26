class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :photo_url
      t.string :link
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
