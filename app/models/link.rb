# To initialize a new Link:
# link = Link.new(title: "Your title", url: "https://example.com", user_id: user.id)

class Link < ApplicationRecord
  belongs_to :user
  acts_as_votable
  has_many :comments
  validates :title, presence: true, length: { maximum: 50 }
  validates :url, presence: true
end
