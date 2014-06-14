class Ward < ActiveRecord::Base
  has_many :user_addresses
  has_many :legislators, foreign_key: :represented_ward_id
  has_many :users, through: :user_addresses
end
