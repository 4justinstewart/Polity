class LegislatorVote < ActiveRecord::Base
  belongs_to :legislation
  belongs_to :legislator
end
