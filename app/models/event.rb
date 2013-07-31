class Event < ActiveRecord::Base

  attr_accessible :title, :when, :where, :details, :user_id, :user 

  validates :title, presence: true
  validates :when, presence: true
  validates :where, presence: true
  validates :details, presence: true
  validates :user_id, presence: true
  belongs_to :user  

end 