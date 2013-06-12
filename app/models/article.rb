class Article < ActiveRecord::Base
  attr_accessible :content, :title, :user_id, :user_name

  validates :content, presence: true

  belongs_to :user
end
