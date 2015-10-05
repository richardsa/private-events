class Event < ActiveRecord::Base
  has_many :invites
  belongs_to :creator, :class_name => "User"
  has_many :attendees, :through => :invites
end
