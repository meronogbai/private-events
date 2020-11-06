class User < ApplicationRecord
  has_many :attendances
  has_many :attended_events, through: :attendances, source: :event

  def upcoming_events
    result = []
    attended_events.each do |event|
      result << event if event.event_date > Date.today
    end
    result
  end

  def previous_events
    result = []
    attended_events.each do |event|
      result << event if event.event_date < Date.today
    end
    result
  end
end
