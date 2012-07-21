class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :code
      t.integer :division_id
      t.integer :conference_id

      t.timestamps
    end
  end
end
