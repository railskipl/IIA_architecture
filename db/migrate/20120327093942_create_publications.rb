class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :pdf

      t.timestamps
    end
  end
end
