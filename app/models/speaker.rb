class Speaker < ApplicationRecord
  has_many :meeting_speakers
  has_many :meetings, through: :meeting_speakers
  validates :first_name, length: {minimum: 2}
  validates :last_name, length: {minimum: 2}
  validates :email, format: {with: /\A(.+)@(.+)\z/, message: "Email invalid"}, uniqueness: true

end
