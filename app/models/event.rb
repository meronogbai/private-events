class Event < ApplicationRecord
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
  belongs_to :creator, class_name: 'User'

  scope :past, -> { where('event_date<?', Date.today) }
  scope :upcoming, -> { where('event_date>?', Date.today) }
end
