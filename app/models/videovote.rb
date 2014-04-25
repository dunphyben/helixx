class Videovote < ActiveRecord::Base
  belongs_to :user
  belongs_to :video


validates :video_id, uniqueness: { scope: :user_id }

 def how_long
    origin = self.created_at
    age = Time.now - origin
    if age < 3600
      age = age/60
      return "#{age.round(2)} minutes ago"
    elsif age >= 3600 && age < 86400
      age = age/3600
      return "#{age.round(2)} hours ago"
    elsif age >= 86400 && age <604800
        age = age/86400
        return "#{age.round(2)} days ago"
    elsif age >= 604800 && age < 2419200
      age = age/604800
      return "#{age.round(2)} weeks ago"
    elsif age >= 2419200 && age < 1.year
      age = age/2419200
      return "#{age.round(2)} months ago"
    else
      return "#{age.round(2)} more than a year ago"
    end
  end

end
