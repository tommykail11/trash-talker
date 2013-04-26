class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :name
      t.references :League

      t.timestamps
    end
    add_index :divisions, :League_id
  end
end
