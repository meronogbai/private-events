class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  def self.past
    result = []
    all.each do |event|
      result << event if event.event_date < Date.today
    end
    result
  end

  def self.upcoming
    result = []
    all.each do |event|
      result << event if event.event_date > Date.today
    end
    result
  end
end
