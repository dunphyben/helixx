class Idea < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :formats
  has_and_belongs_to_many :users




  validate :title, presence: true


end
