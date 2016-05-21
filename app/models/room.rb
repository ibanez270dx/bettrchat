class Room < ApplicationRecord

  has_many :messages

  validates :url, url: { no_local: true }

end
