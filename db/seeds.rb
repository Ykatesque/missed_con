# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'feedzirra'



def seed_from_feed(feed_url)
  feed = Feedzirra::Feed.fetch_and_parse(feed_url)
  feed.entries.each do |entry|

      Post.create(
        :title        => entry.title,
        :summary      => entry.summary,
        :url          => entry.url,
        :published_at => entry.published,
        :guid         => entry.id
      )

  end
end


seed_from_feed("http://sfbay.craigslist.org/search/mis/?query=m4w&format=rss")
seed_from_feed("http://sfbay.craigslist.org/search/mis/?s=100&query=m4w&format=rss")