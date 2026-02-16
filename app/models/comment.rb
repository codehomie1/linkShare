# To initialize a new Comment:
# comment = Comment.new(body: "your comment text", link_id: link.id, user_id: user.id)

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
end
