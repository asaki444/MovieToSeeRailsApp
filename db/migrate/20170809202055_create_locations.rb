class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :zip_code
      t.integer :user_id
      t.integer :movie_id
      t.timestamps
    end
  end
end
