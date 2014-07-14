module FeedObserver
  extend ActiveSupport::Concern

  included do
    after_create :create_feed_entries
  end

  private

    def create_feed_entries
      feed = Feedjira::Feed.fetch_and_parse(url)
      add_entries(feed.entries)
    end

    def add_entries(entries)
      entries.each do |entry|
        feed_entries.create!(
          title:        entry.title,
          summary:      entry.summary,
          url:          entry.url)
      end
    end
end
