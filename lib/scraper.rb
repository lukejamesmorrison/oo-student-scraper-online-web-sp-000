require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_page(url)
    Nokogiri::HTML(open(url))
  end

  def self.scrape_index_page(index_url)
    doc = self.scrape_page(index_url)

    puts doc.css(".student-card")
  end

  def self.scrape_profile_page(profile_url)
    doc = self.scrape_page(profile_url)
  end

end
