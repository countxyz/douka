class FeedSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :url

  has_many :entries
end
