class Tab < ActiveRecord::Base

    belongs_to :song

    validates :source_url, presence: true
    validates :rank, presence: true
    validates :rank, numericality: {greater_than_or_equal_to: 1}
    validates :rank, numericality: {less_than_or_equal_to: 5}

end
