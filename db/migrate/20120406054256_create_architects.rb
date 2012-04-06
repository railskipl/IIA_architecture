class CreateArchitects < ActiveRecord::Migration
  def change
    create_table :architects do |t|
      t.string :title

      t.timestamps
    end
  end
end
