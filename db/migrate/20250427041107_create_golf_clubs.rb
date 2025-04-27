class CreateGolfClubs < ActiveRecord::Migration[8.0]
  def change
    create_table :golf_clubs do |t|
      t.string :club_type
      t.string :brand

      t.timestamps
    end
  end
end
