class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'

  validates :event_name, presence: true
  validates :location, presence: true
  validates :date, presence: true
end