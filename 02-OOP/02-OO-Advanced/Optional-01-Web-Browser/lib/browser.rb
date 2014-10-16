require 'nokogiri'
require 'open-uri'

class Browser
  def fetch_content(url)
    Nokogiri::HTML(open(url)) do |config|
      config.strict.noent
    end
  end
  # p Nokogiri::HTML(doc.to_s).text
end
