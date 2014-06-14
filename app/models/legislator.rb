
class Legislator < ActiveRecord::Base
  belongs_to :alderman, class_name: 'User'
  belongs_to :represented_ward, class_name: 'Ward'
  has_many :legislation_sponsors #sponsorships?
  has_many :legislator_votes
end

# response = Net::HTTP.get_response("example.com","/?search=thing&format=json")

0
