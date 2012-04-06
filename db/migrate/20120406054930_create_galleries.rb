class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.integer :architect_id
      t.string :pic

      t.timestamps
    end
  end
end
