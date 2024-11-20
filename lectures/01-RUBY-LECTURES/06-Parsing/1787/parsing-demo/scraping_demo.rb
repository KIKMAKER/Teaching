require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

puts "what kind of recipes do you want?"
ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.parse(url).read
html_doc = Nokogiri::HTML.parse(html_file)

html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  element.text.strip
  puts element.attribute("href").value
end
