# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'uri'
require 'net/http'
require 'json'
require 'full-name-splitter'

def importLegislatorInfo(url)
  	data = Net::HTTP.get(url)
  	@parsed_data = JSON.parse(data)
end

ward_json_url = URI("http://data.cityofchicago.org/resource/htai-wnw4.json")

importLegislatorInfo(ward_json_url)

@parsed_data.each_with_index do |ward_row_hash, index|
	first_name = FullNameSplitter.split(ward_row_hash["alderman"]).first
	last_name = FullNameSplitter.split(ward_row_hash["alderman"]).last
	email = ward_row_hash["email"]
	unless ward_row_hash["email"]
		email = "null#{index}@null.com"
	end

	user = User.new(first_name: first_name,
									last_name:last_name,
									email: email,
									password: "password",
									password_confirmation: "password")

	user.save
		if user.save
			human_address_hash = JSON.parse(ward_row_hash["location"]["human_address"])
			ward_number = ward_row_hash["ward"]
			ward_address1 = ward_row_hash["address"]
			ward_zip = human_address_hash["zip"]
			puts human_address_hash["zip"]
			puts human_address_hash["zip"].class
			ward 			   = Ward.create(ward_number: ward_number,	address1: ward_address1, zip: ward_zip)

			if ward.save
					user_address_street1 = ward_row_hash["city_hall_address"]

					user_address = UserAddress.new(ward_id: ward.id,
																				 address1: user_address_street1)
					user_address.save

					legislator = Legislator.create!(represented_ward_id: ward.id,
																					alderman_id: user.id)
				end
		end
end

# # Legislator
# #   t.integer :alderman_id
# #   t.integer :represented_ward_id
# #   t.date :term_start_date
# #   t.date :term_end_date
# #   t.string :party_affiliation
# # end

# # create_table :wards do |t|
# #   t.integer :ward_number
# #   t.string :address1
# #   t.string :address2
# #   t.string :zip

# #   t.timestamps
