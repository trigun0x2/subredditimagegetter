class GetImage < ActiveRecord::Base
  attr_accessible :link, :subreddit

  validates :link, :format => URI::regexp(%w(http https))
end
