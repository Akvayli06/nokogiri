require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

def crypto_name(page)
    name_array = []
    page.xpath("//tr//td[3]//div").each { |name| name_array << name.text}
    return name_array
  end

def crypto_values(page)
    values_array = []
    page.xpath("//tr//td[5]//div").map { |values| values_array << values.text}
    return values_array
end

hash = Hash[crypto_name(page).zip(crypto_values(page))]

puts hash








 