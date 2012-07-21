class AddWeekIdToSchedule < ActiveRecord::Migration
  def change
    add_column :schedules, :week_id, :integer
    remove_column :schedules, :nfl_week_id
  end
end
