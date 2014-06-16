
require 'faker'
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
    ward               = Ward.create(ward_number: ward_number,  address1: ward_address1, zip: ward_zip)

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


# ward_numbers = [*1..50]
# wards = 50.times.map do
#   Ward.create!( ward_number:    ward_numbers.shuffle.pop,
#                 address1:       "100 N. Ward Office Address St.",
#                 address2:        "Office #2",
#                 zip:             "12345" )
# end


all_wards = Ward.all

user_addresses = 300.times.map do
  UserAddress.create!(ward_id:  all_wards.sample.id,
                      address1: "200 N. User Address St.",
                      address2: "Apt #2",
                      zip:       "56789")
end


all_addresses = UserAddress.all

users = 600.times.map do
  User.create!( first_name:             Faker::Name.first_name,
                last_name:              Faker::Name.last_name,
                email:                  Faker::Internet.email,
                # avatar:                 Faker::Avatar.image,
                password:               "password!",
                password_confirmation:  "password!",
                user_address_id:         all_addresses.sample.id)
end

###########################################################################

# current_aldermen_ids = [*21..70]
# ward_numbers = [*1..50]

# parties = ["democrat", "republican", "independent"]

# legislators_now = 50.times.map do
#   Legislator.create!(alderman_id:         current_aldermen_ids.shuffle.pop,
#                      represented_ward_id: ward_numbers.shuffle.pop,
#                      term_start_date:     "10/1/2011",
#                      #NO END DATE
#                      party_affiliation:   parties.sample)
# end

# past_aldermen_ids = [*71..120]
# ward_numbers = [*1..50]

# legislators_past = 50.times.map do
#   Legislator.create!(alderman_id:         past_aldermen_ids.shuffle.pop,
#                      represented_ward_id: ward_numbers.shuffle.pop,
#                      term_start_date:     "10/1/2007",
#                      term_end_date:       "9/30/2011",
#                      party_affiliation:   parties.sample)
# end




#########################################################

status_options_open = ["active", "open"]
status_options_closed = ["inactive", "closed"]
type_options = ["reports", "resolution", "ordinance"]

vote_options = ["Y", "N"]



legislations = 30.times.map do
  Legislation.create!(city_identifier: "123456_city_identifier",
                      status:          status_options_closed.sample,
                      kind:            type_options.sample,
                      opened_date:     rand(2.years).ago,
                      closed_date:     "5/23/2014" )
end

# *****************************************************************

Legislator.all.each do |legislator|
  Legislation.all.each do |issue|
    LegislatorVote.create!(legislation_id: issue.id,
                           legislator_id:  legislator.id,
                           vote_date:      "5/24/2014",
                           vote:           vote_options.sample)
  end
end


# *****************************************************************


legislations = 30.times.map do
  Legislation.create!(city_identifier: "123456_city_identifier",
                      status:          status_options_open.sample,
                      kind:            type_options.sample,
                      opened_date:     rand(2.years).ago )
end


######################################################################




aldermen_ids = Legislator.all.pluck(:alderman_id)
users = User.all.pluck(:id)

regular_user_ids = users - aldermen_ids
legislation_ids = Legislation.all.pluck(:id)


regular_user_ids.each do |x|
  legislation_ids.each do |y|
    LegislationVoice.create!(user_id: x,
                             legislation_id: y,
                             support: vote_options.sample,
                             feedback: Faker::Lorem.words(15).join(" "))

  end
end


######################################################################

sponsor_number = [*1..3]

Legislation.all.each do |issue|
  sponsor_number.sample.times do
    LegislationSponsor.create!(sponsor_id: Legislator.all.sample.id,
                               legislation_id: issue.id)
  end
end


Legislation.all.each do |issue|
  issue.update_attributes(:title => Faker::Lorem.words(5).join(" "))

end
