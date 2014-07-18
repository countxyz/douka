class EntrySerializer < ActiveModel::Serializer
  attributes :id, :url, :title, :summary, :feed_id
end
