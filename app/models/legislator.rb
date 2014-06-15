# == Schema Information
#
# Table name: legislators
#
#  id                  :integer          not null, primary key
#  alderman_id         :integer
#  represented_ward_id :integer
#  term_start_date     :date
#  term_end_date       :date
#  party_affiliation   :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#
# Indexes
#
#  index_legislators_on_alderman_id          (alderman_id)
#  index_legislators_on_represented_ward_id  (represented_ward_id)
#

class Legislator < ActiveRecord::Base
  belongs_to :alderman, class_name: 'User'
  belongs_to :represented_ward, class_name: 'Ward'
  has_many :legislation_sponsors #sponsorships?
  has_many :legislator_votes
end
