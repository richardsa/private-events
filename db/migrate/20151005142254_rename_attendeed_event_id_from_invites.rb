class RenameAttendeedEventIdFromInvites < ActiveRecord::Migration
  def change
  
  remove_column :invites, :attended_event, :integer
  remove_column :invites, :attendeed_event
  add_reference :invites, :attended_event, index: true
  end
end
