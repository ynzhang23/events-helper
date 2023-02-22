class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  validates :event_name, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
