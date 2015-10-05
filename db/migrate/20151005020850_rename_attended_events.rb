class RenameAttendedEvents < ActiveRecord::Migration
  def change
    rename_table :attended_events, :invites
  end
end
