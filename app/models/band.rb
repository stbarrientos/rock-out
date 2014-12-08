class Band < ActiveRecord::Base

  validates :name, presence: true
  validates :motto, presence: true

end
