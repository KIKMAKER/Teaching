require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

puts "Which ingredient do you want a recipe for?"
  ingredient = gets.chomp
url = "https://www.bbcgoodfood.com/search/recipes?q=#{ingredient}"

html_file = URI.parse(url).read
p html_file
html_doc = Nokogiri::HTML.parse(html_file)
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
p html_doc
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
puts "--------------"
html_doc.search(".layout-md-rail__primary .card__content a").each do |element|
  puts element.text.strip
  # puts element.attribute("href").value
end
