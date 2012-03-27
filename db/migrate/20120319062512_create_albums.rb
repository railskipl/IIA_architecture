class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :award_id
      t.string :photo

      t.timestamps
    end
  end
end
