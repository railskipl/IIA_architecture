class CreateYralbums < ActiveRecord::Migration
  def change
    create_table :yralbums do |t|
      t.integer :book_id
      t.string :yrphoto

      t.timestamps
    end
  end
end
