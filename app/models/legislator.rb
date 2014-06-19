
class Legislator < ActiveRecord::Base

  belongs_to :alderman, class_name: 'User'
  belongs_to :represented_ward, class_name: 'Ward'
  has_many :legislation_sponsors, :foreign_key => :sponsor_id #sponsorships?
  has_many :sponsored_legislations, :through => :legislation_sponsors, :source => :legislation

  has_many :legislator_votes
  has_many :voted_legislations, :through => :legislator_votes, :source => :legislation

  def issue_vote(legislation)
		if self.legislator_votes.find_by_legislation_id(legislation.id).vote == "Y"
  		return "Pass"
  	elsif self.legislator_votes.find_by_legislation_id(legislation.id).vote == "N"
			return "Do Not Pass"
		end
  end

  def return_legislation_vote(legislation_id)
    vote = LegislatorVote.where(legislation_id: legislation_id, legislator_id: self.id).first.vote
    vote == "Y" ? (return "Yay") : (return "Nay")
  end
end

# response = Net::HTTP.get_response("example.com","/?search=thing&format=json")
