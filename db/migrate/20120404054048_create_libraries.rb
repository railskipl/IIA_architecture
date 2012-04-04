class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :book_name
      t.string :author
      t.string :description
      t.string :book_cover

      t.timestamps
    end
  end
end
