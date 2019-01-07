class Link < ApplicationRecord
  validates :description, presence: true, length: { minimum: 5 }

  belongs_to :user
  has_many :votes
end
