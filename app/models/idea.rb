class Idea < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :formats
  has_and_belongs_to_many :users



  has_and_belongs_to_many :users
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :formats

  validates :title, presence: true,
            length: { minimum: 3,
                      maximum: 90,
                      too_short: "Must have at least 3 characters",
                      too_long: "Must have fewer than 50 characters"
                    }
  validates :summary, presence: true,
            length: { minimum: 10,
                      maximum: 140,
                      too_short: "Must have at least 10 characters",
                      too_long: "Must have fewer than 140 characters"
                    }
  validates :content, presence: true,
            length: { minimum: 10,
                      maximum: 10000,
                      too_short: "Must have at least 100 characters",
                      too_long: "You have reached your character limitation. Please visit our <%= /pro %> page for pro plans."
                    }


end
