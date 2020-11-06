class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event

  def upcoming_events
    attended_events.where('event_date>?', Date.today)
  end

  def previous_events
    attended_events.where('event_date<?', Date.today)
  end
end
