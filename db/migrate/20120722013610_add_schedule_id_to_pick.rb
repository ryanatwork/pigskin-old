class AddScheduleIdToPick < ActiveRecord::Migration
  def change
    add_column :picks, :schedule_id, :integer
  end
end
