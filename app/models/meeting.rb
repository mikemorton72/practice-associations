class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers 
  validates :title, length: {minimum: 2}
  validates :agenda, length: {minimum: 8}
  validates :location, length: {minimum: 2}
  validates :time, presence: true

end
