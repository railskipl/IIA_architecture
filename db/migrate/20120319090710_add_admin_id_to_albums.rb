class AddAdminIdToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :admin_id, :integer
  end
end
