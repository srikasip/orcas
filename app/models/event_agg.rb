class EventAgg < ActiveRecord::Base
  has_one :events_parser
end
