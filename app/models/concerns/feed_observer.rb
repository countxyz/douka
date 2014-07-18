module FeedObserver
  extend ActiveSupport::Concern

  included do
    after_create :create_entries
  end

  private

    def create_entries
      feed = Feedjira::Feed.fetch_and_parse(url)
      add_entries(feed.entries)
    end

    def add_entries(entries)
      entries.each do |entry|
        Entry.create!(
          title:        entry.title,
          summary:      entry.summary,
          url:          entry.url,
          feed_id:      id)
      end
    end
end
