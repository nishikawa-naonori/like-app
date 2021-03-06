# like.rb

class Like < ApplicationRecord
  # 以下の2行を追記
  belongs_to :user
  belongs_to :post
  validates_uniqueness_of :post_id, scope: :user_id
end