# == Schema Information
#
# Table name: legislator_votes
#
#  id             :integer          not null, primary key
#  legislation_id :integer
#  legislator_id  :integer
#  vote_date      :date
#  vote           :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_legislator_votes_on_legislation_id  (legislation_id)
#  index_legislator_votes_on_legislator_id   (legislator_id)
#

class LegislatorVote < ActiveRecord::Base
  belongs_to :legislation
  belongs_to :legislator
end
