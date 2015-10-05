class Event < ActiveRecord::Base
  has_many :invites, :foreign_key => :attended_event_id
  belongs_to :creator, :class_name => "User"
  has_many :attendees, :through => :invites
end
