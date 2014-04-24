class Video < ActiveRecord::Base

  belongs_to :user
  belongs_to :idea


before_save :url_scrub

  def url_scrub
    string = self.video_url
    partitioned = string.partition(/watch\?v=/)
    string = partitioned[0].concat("embed/").concat(partitioned[2])
    self.video_url = string
  end

end
