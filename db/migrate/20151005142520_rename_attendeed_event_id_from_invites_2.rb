class RenameAttendeedEventIdFromInvites2 < ActiveRecord::Migration
  def change
  remove_column :invites, :attendeed_event_id
  end
end
