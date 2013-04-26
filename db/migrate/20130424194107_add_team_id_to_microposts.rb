class AddTeamIdToMicroposts < ActiveRecord::Migration
  def change
    add_column :microposts, :team_id, :integer
  end
end
