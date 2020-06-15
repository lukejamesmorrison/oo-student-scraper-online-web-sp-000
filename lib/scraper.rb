require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_page(url)
    Nokogiri::HTML(open(url))
  end

  def self.scrape_index_page(index_url)
    students = []
    doc = self.scrape_page(index_url)
    students_html = doc.search(".student-card")
    students_html.each do |html|
      student = Student.new({})
      student.name =
      student.location
      student.twitter
      student.linkedin
      student.github
      student.blog
      student.profile_quote
      student.bio
      student./profile_url 
    end
  end

  def self.scrape_profile_page(profile_url)
    doc = self.scrape_page(profile_url)
  end

end
