class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :character
      t.integer :show_id

      t.timestamps null: false
    end
  end
end
