require 'open-uri'
require 'nokogiri'
def scraper(answer)
  url = "https://letsy.lewagon.com/products?search=#{answer}"
  # 1. We get the HTML page content
  html_content = URI.parse(url).read
  # 2. We build a Nokogiri document from this file
  doc = Nokogiri::HTML.parse(html_content)

  results = []

  # 3. We search for the correct elements containing the items' title in our HTML doc
  doc.search('.product-card .title-container .title').each do |element|
    # 4. For each item found, we extract its title and print it
    results << { name: element.text.strip, bought: false }
    # puts element.text.strip
  end

  return results
end
