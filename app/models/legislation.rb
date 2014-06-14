class Legislation < ActiveRecord::Base
  has_many :legislator_votes
  has_many :community_supports

end
