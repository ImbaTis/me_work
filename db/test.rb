require 'json'
lists = {}
file = File.read('./json/business.json')
jobs = JSON.parse(file)["jobs"]

jobs.each do |item|
  puts "#{item["title"]}- #{item["company_name"]}- #{item["publication_date"][0..9]}"
end
