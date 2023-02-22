class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, uniqueness: { scope: :event, message: "You are already part of the event!" }
end
