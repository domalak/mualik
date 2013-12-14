class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :photo_url
      t.integer :likes

      t.timestamps
    end
  end
end
