class Ward < ActiveRecord::Base
  has_one :legislator, foreign_key: :alderman_id
  has_many :user_addresses
  has_many :users, through: :user_addresses
  has_many :community_meetings

  def citizens
    addresses_in_ward = UserAddress.where(ward_id: self.id)
    User.where(user_address_id: addresses_in_ward.pluck(:id))
  end

end
