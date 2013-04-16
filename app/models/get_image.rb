class GetImage < ActiveRecord::Base
  attr_accessible :link, :subreddit

  validates :link, :format => URI::regexp(%w(http https))

  before_validation :smart_add_url_protocol

protected

def smart_add_url_protocol
  unless self.link[/^http:\/\//] || self.link[/^https:\/\//]
    self.link = 'http://' + self.link
  end
end

end
