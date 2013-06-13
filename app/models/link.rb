class Link < ActiveRecord::Base
  attr_accessible :description, :url, :user_id, :user_name

  belongs_to :user
  validates :user_id, presence: true 
  
end
