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

class LegislationSponsor < ActiveRecord::Base
  belongs_to :legislation
  belongs_to :legislator, foreign_key: :sponsor_id
end
