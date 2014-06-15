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

class Ward < ActiveRecord::Base
  has_many :legislators, foreign_key: :alderman_id
  has_many :user_addresses
  has_many :users, through: :user_addresses

end
