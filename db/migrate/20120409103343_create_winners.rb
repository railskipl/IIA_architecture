class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.string :title
      t.text :description
      t.string :winner_photo

      t.timestamps
    end
  end
end
