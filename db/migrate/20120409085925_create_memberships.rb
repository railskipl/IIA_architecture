class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
    	t.string :title
    	t.text 	 :description

      t.timestamps
    end
  end
end
