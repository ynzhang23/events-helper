class User < ApplicationRecord
  has_many :hosted_events, class_name: 'Events', foreign_key: "host_id"

  validates :username, presence: true, uniqueness: true
  validates :display_name, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
