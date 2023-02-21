class User < ApplicationRecord
  has_many :hosted_events, class_name: 'Event', foreign_key: "host_id", dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attend_events, through: :attendances, source: :event

  validates :username, presence: true, uniqueness: true
  validates :display_name, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
