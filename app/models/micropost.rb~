class Micropost < ActiveRecord::Base
# public members
      	attr_accessible :content
# Associations
	belongs_to :user
# Makes sure user_id is not null
  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}

  default_scope order: 'microposts.created_at DESC'
end
