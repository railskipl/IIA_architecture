class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :comp_title
      t.text :comp_description
      t.string :comp_photo

      t.timestamps
    end
  end
end
