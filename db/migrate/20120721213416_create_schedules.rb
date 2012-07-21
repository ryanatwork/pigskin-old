class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :nfl_week_id
      t.integer :home_team_id
      t.integer :away_team_id
      t.date :start_time

      t.timestamps
    end
  end
end
