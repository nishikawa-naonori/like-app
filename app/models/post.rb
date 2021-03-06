# post.rb

class Post < ApplicationRecord
  belongs_to :user

  # 以下の1行を追記
  has_many :likes
  def like_user(user_id)
    likes.find_by(user_id: user_id)
   end
end