
class Legislator < ActiveRecord::Base
  belongs_to :alderman, class_name: 'User'
  belongs_to :represented_ward, class_name: 'Ward'
  has_many :legislation_sponsors, :foreign_key => :sponsor_id #sponsorships?
  has_many :sponsored_legislations, :through => :legislation_sponsors, :source => :legislation

  has_many :legislator_votes
  has_many :voted_legislations, :through => :legislator_votes, :source => :legislation
end

# response = Net::HTTP.get_response("example.com","/?search=thing&format=json")
