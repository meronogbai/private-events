class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> { where('event_date<?', Date.today) }
  scope :upcoming, -> { where('event_date>?', Date.today) }
end
