class LegislatorVote < ActiveRecord::Base
  belongs_to :legislator, class_name: 'User'
  belongs_to :legislation
end
