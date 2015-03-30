class User < ActiveRecord::Base
  #has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"
  #belongs_to_many :events
end
