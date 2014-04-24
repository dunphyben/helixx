class Idea < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged


  validate :title, presence: true


end
