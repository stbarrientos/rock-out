class Band < ActiveRecord::Base

  has_many :userBands
  has_many :users, through: :userBands

  validates :name, presence: true
  validates :motto, presence: true

end
