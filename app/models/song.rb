class Song < ActiveRecord::Base

  belongs_to :band
  has_many :tabs

  validates :artist, presence: true
  validates :title, presence: true

end
