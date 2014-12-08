class Tab < ActiveRecord::Base

    belongs_to :song

    validates :source_url, presence: true
    validates :rank, presence: true

end
