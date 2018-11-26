class HomeController < ApplicationController
  
  def index
  end
  
  def top
    
    sites = [
      "https://btcnews.jp/feed/atom/"
    ]
    
    @news_list = []
    sites.each do |site|
      rss = Feedjira::Feed.fetch_and_parse site
      rss.entries.each do |item|
        @news_list += [:title => item.title,
                  :url => item.url,
                  :summary => item.summary,
                  :published => item.published.to_time.strftime("%Y-%m-%d %H:%M:%S")]
      end
    end
  end
  
  def news
    sites = [
      "https://btcnews.jp/feed/atom/"
    ]
    
    @news_list = []
    sites.each do |site|
      rss = Feedjira::Feed.fetch_and_parse site
      rss.entries.each do |item|
        @news_list += [:title => item.title,
                  :url => item.url,
                  :summary => item.summary,
                  :published => item.published.to_time.strftime("%Y-%m-%d %H:%M:%S")]
      end
    end
  end

end
