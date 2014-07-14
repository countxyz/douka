class Entry < ActiveRecord::Base
  belongs_to :feed

  validates_presence_of :url

  validates_length_of :url, maximum: 100
end
