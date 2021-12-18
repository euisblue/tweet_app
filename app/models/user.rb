class User < ApplicationRecord
  validates :password, {presence: true}
  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}

  def posts 
    return Post.where(user_id: self.id)
  end
end
