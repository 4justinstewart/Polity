# == Schema Information
#
# Table name: legislation_sponsors
#
#  id             :integer          not null, primary key
#  sponsor_id     :integer
#  legislation_id :integer
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_legislation_sponsors_on_legislation_id  (legislation_id)
#  index_legislation_sponsors_on_sponsor_id      (sponsor_id)
#

require 'spec_helper'

describe LegislationSponsor do
  pending "add some examples to (or delete) #{__FILE__}"
end
