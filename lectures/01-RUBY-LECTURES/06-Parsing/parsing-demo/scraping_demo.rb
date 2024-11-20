require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com
ingredient = "spinach"
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.open(url).read
# p html_file

html_doc = Nokogiri::HTML.parse(html_file)
# p html_doc


# puts "On BBC Good Food for #{ingredient} we have the following recipes:"
html_doc.search(".layout-md-rail__primary .card__content a").each_with_index do |element, index|
  puts "#{index + 1} #{element.text.strip}"
  puts element.attribute("href").value
end
