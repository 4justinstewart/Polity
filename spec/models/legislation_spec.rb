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

require 'spec_helper'

describe Legislation do
  pending "add some examples to (or delete) #{__FILE__}"
end
