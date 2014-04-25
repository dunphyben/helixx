class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :ideas
  has_many :videos
  has_many :votes
  has_many :videovotes


  validates_presence_of :username
  validates_uniqueness_of :username

end
