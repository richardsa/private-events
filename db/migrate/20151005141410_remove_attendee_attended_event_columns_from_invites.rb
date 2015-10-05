class RemoveAttendeeAttendedEventColumnsFromInvites < ActiveRecord::Migration
  def change
  remove_column :invites, :attendee, :integer
  remove_column :invites, :attendeed_event, :integer
  add_reference :invites, :attendee, index: true
  add_reference :invites, :attendeed_event, index: true
  
  end
end
