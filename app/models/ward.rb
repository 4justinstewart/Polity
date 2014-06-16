class Ward < ActiveRecord::Base
  has_one :legislator, foreign_key: :alderman_id
  has_many :user_addresses
  has_many :users, through: :user_addresses

end
