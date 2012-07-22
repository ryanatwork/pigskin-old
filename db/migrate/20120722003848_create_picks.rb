class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :user_id
      t.integer :week_id
      t.integer :team_id
      t.integer :points

      t.timestamps
    end
  end
end
