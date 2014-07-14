class Feed < ActiveRecord::Base
  has_many :entries, dependent: :destroy

  validates_presence_of :url

  validates_length_of :url, maximum: 100
end
