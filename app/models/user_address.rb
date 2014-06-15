# == Schema Information
#
# Table name: user_addresses
#
#  id         :integer          not null, primary key
#  ward_id    :integer
#  address1   :string(255)
#  address2   :string(255)
#  zip        :string(255)
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_user_addresses_on_ward_id  (ward_id)
#

class UserAddress < ActiveRecord::Base
  belongs_to :ward
  has_many :users
end
