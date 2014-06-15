# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Examples:

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


ward_numbers = [*1..50]
wards = 50.times.map do
  Ward.create!( ward_number:    ward_numbers.shuffle.pop,
                address1:       "100 N. Ward Office Address St.",
                address2:        "Office #2",
                zip:             "12345" )
end

user_addresses = 100.times.map do
  UserAddress.create!(ward_id:  wards.shuffle.sample.id,
                      address1: "200 N. User Address St.",
                      address2: "Apt #2",
                      zip:       "56789")
end

users = 100.times.map do
  User.create!( first_name:             Faker::Name.first_name,
                last_name:              Faker::Name.last_name,
                email:                  Faker::Internet.email,
                # avatar:                 Faker::Avatar.image,
                password:               "password!",
                password_confirmation:  "password!",
                user_address_id:         1) #TODO
end

###########################################################################

aldermen_ids = users.sample(50)
ward_numbers = [*1..50]

parties = ["democrat", "republican", "independent"]

legislators = 50.times.map do
  Legislator.create!(alderman_id:         aldermen_ids.pop.id,
                     represented_ward_id: ward_numbers.shuffle.pop,
                     term_start_date:     "10/1/2011",
                     term_end_date:       "9/30/2014",
                     party_affiliation:   parties.sample)
end

#########################################################

status_options_open = ["active", "open"]
status_options_closed = ["inactive", "closed"]
type_options = ["type1", "type2", "type3"]

legislations = 30.times.map do
  Legislation.create!(city_identifier: "123456_city_identifier",
                      status:          status_options_open.sample,
                      kind:            type_options.sample,
                      opened_date:       rand(2.years).ago )
end

amount = [*1..10]

legislations = 30.times.map do
  Legislation.create!(city_identifier: "123456_city_identifier",
                      status:          status_options_closed.sample,
                      kind:            type_options.sample,
                      opened_date:     rand(2.years).ago,
                      closed_date:     "5/23/2014" )
end



######################################################################

vote_options = ["Y", "N"]

Legislator.all.each do |alderman|
  Legislation.all.each do |issue|
    LegislatorVote.create!(legislation_id: issue.id,
                            legislator_id:  alderman.id,
                            vote_date:      "5/23/2014",
                            vote:           vote_options.sample)
  end
end

#####################################################################

## undefined local variable or method user_pool ###


# community_members = User.all.each_with_object([]) do |user, regular_users|
#   unless Legislator.find(:all, :conditions => "alderman_id == user.id")
#     regular_users < user
#   end
# end

# vote_options = ["Y", "N"]




# legislator_ids = my_legislators.each_with_object([]) do |user, array|
#   array.push(user.id)
# end



# test_users = User.all

# people = User.all

# legislator_ids = Legislator.all.pluck(:alderman_id)


# community_members = people.select do |p|
#   !legislator_ids.include?(p.id)
# end

# # puts community_members
# legislations = Legislation.all
# # puts legislations
# community_members.map do |person|
#   legislations.each do |issue|
#     LegislationVoice.create!(user_id: person.id,
#                              legislation_id: issue.id,
#                              support: vote_options.sample,
#                              feedback: Faker::Lorem.words(3))
#   end
# end



aldermen_ids = Legislator.all.pluck(:alderman_id)
users = User.all.pluck(:id)

regular_user_ids = users - aldermen_ids
legislation_ids = Legislation.all.pluck(:id)


regular_user_ids.each do |x|
  legislation_ids.each do |y|
      LegislationVoice.create!(user_id: x,
                             legislation_id: y,
                             support: vote_options.sample,
                             feedback: "This is my Feedback Bitches!!!")

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
