class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :yrpdf

      t.timestamps
    end
  end
end
