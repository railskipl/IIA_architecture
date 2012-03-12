class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.string :name
      t.integer :phone_no
      t.string :email
      t.string :designation
      t.text :brief_info
      t.timestamps
    end
  end
end
