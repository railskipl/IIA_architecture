class CreatePalbums < ActiveRecord::Migration
  def change
    create_table :palbums do |t|
      t.integer :picture_id
      t.string :galphoto

      t.timestamps
    end
  end
end
