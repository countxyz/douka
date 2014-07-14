class Feed < ActiveRecord::Base
  include FeedObserver

  has_many :entries, dependent: :destroy

  validates_presence_of :url

  validates_length_of :url, maximum: 100
end
