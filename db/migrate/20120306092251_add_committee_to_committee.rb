class AddCommitteeToCommittee < ActiveRecord::Migration
  def change
    add_column :committees, :committee, :string
  end
end
