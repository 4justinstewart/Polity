class User < ActiveRecord::Base
  has_one :user_address
  has_many :community_supports
  has_many :legislators
  has_many :legislation_sponsorships, through: :legislators, source: :sponsor_id
  has_many :legislator_votes, through: :legislators

end
