class LegislatorVote < ActiveRecord::Base
  belongs_to :legislator
  belongs_to :legislation
end
