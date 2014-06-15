# == Schema Information
#
# Table name: legislations
#
#  id              :integer          not null, primary key
#  city_identifier :string(255)
#  status          :string(255)
#  kind            :string(255)
#  opened_date     :date
#  closed_date     :date
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_legislations_on_city_identifier  (city_identifier)
#

class Legislation < ActiveRecord::Base
  has_many :legislation_voices
  has_many :legislation_votes
end
