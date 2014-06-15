# == Schema Information
#
# Table name: wards
#
#  id          :integer          not null, primary key
#  ward_number :integer
#  address1    :string(255)
#  address2    :string(255)
#  zip         :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

require 'spec_helper'

describe Ward do
  pending "add some examples to (or delete) #{__FILE__}"
end
