# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


array_of_aldermen_names = []

def fullnamespliter
	first_name = ""
	last_name = ""

	names.each do |full_name|
		pieces = full_name.split(' ')
		name_length = pieces.length

		case name_length
			when 2
				first_name = pieces[0]
				last_name = pieces[-1]
			when 3
				first_name = pieces[0]
				last_name = "#{pieces[-2]} " + "#{pieces[-1]}"
		end
		puts "first_name: #{first_name}"
		puts "last_name: #{last_name}"
	end
end

def importLegislatorInfo(url)
  	data = Net::HTTP.get(url)
  	@parsed_data = JSON.parse(data)
  	parsed_data.map{|alderman_data_row| array_of_aldermen_names.push(alderman_data_row["alderman"])}
end

ward_json_url = URI("http://data.cityofchicago.org/resource/htai-wnw4.json")

importLegislatorInfo(ward_json_url)

@parsed_data.each |ward_row_hash| do
	user = User.new(first_name:,
									last_name:,
									email: ward_row_hash["email"])
		if user.save
			human_address_hash = JSON.parse(ward_row_hash["location"]["human_address"])
			ward_number = ward_row_hash["ward"]
			ward_address1 = ward_row_hash["address"],
			ward_zip = human_address_hash["zip"]
			ward 			   = Ward.new(ward_number: ward_number,
															address1: ward_address1,
															zip: ward_zip)

			if ward.save
					user_address_street1 = ward_row_hash["city_hall_address"]

					user_address = UserAddress.new(user_id: user.id,
																				 ward_id: ward.id,
																				 address_street1: user_address_street1)
					user_address.save

					legislator = Legislator.create!(represented_ward_id: ward.id,
																					alderman_id: user.id)
				else
			end
	end
end


# Legislator
#   t.integer :alderman_id
#   t.integer :represented_ward_id
#   t.date :term_start_date
#   t.date :term_end_date
#   t.string :party_affiliation
# end

# create_table :wards do |t|
#   t.integer :ward_number
#   t.string :address1
#   t.string :address2
#   t.string :zip

#   t.timestamps
