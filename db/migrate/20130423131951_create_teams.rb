class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.references :Division

      t.timestamps
    end
    add_index :teams, :Division_id
  end
end
