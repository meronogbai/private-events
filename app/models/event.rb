class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  # puts Date.today-100
  #
  # scope :past_scoped, -> { self.where(event_date: '2020-04-20') }

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
