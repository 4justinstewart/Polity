require 'uri'
require 'net/http'
require 'json'

class Legislator < ActiveRecord::Base
  belongs_to :alderman, class_name: 'User'
  belongs_to :represented_ward, class_name: 'Ward'
  has_many :legislation_sponsors #sponsorships?
  has_many :legislator_votes

  def self.importLegislatorInfo
  	url = URI("http://data.cityofchicago.org/resource/htai-wnw4.json")
  	data = Net::HTTP.get(url)
  	# p data
  	puts "---------------------------------------------"
  	# p data.class
  	puts "---------------------------------------------"
  	parsed_data = JSON.parse(data)
  	p parsed_data
  	# parsed_data.map do |alderman_data_row|
		 # puts alderman_data_row["alderman"]
		 # # puts alderman_data_row["city_hall_address"]
		 # # puts alderman_data_row["city_hall_city"]
		 # # puts alderman_data_row["city_hall_state"]
		 # # puts alderman_data_row["city_hall_zipcode"]
		 # human_address_hash = JSON.parse(alderman_data_row["location"]["human_address"])
		 # p human_address_hash
		 # puts human_address_hash.class
		 # puts human_address_hash["zip"]
  	# end
  end
end

# response = Net::HTTP.get_response("example.com","/?search=thing&format=json")

0
