class CreateAttendedEvents < ActiveRecord::Migration
  def change
    create_table :attended_events do |t|
      t.integer :attendee
      t.integer :attended_event

      t.timestamps null: false
    end
  end
end
