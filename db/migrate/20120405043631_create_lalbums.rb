class CreateLalbums < ActiveRecord::Migration
  def change
    create_table :lalbums do |t|
      t.integer :lecture_id
      t.string :lectphoto

      t.timestamps
    end
  end
end
