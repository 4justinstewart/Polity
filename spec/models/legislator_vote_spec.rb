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

require 'spec_helper'

describe LegislatorVote do
  pending "add some examples to (or delete) #{__FILE__}"
end
