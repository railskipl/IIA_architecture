class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :description
      t.string :news_photo

      t.timestamps
    end
  end
end
