class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :title
      t.string :email
      t.string :phone
      t.string :address
      t.test :description 
      t.string :reg_no
      t.string :image

      t.timestamps
    end
    
  end

end
