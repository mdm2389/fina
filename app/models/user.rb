class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :zip_code, :image 
  # attr_accessible :title, :body

  validates_attachment :image, presence: true, 
                          content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']},
                          size: { less_than: 5.megabytes }

  has_many :pins, :dependent => :destroy 
  has_many :articles, :dependent => :destroy 
  has_many :links, :dependent => :destroy
  has_many :events, :dependent => :destroy

  has_attached_file :image, styles: { medium: "320x240>"}
 
end
