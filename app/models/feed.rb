class Feed < ActiveRecord::Base
  validates_presence_of :url

  validates_length_of :url, maximum: 100
end
