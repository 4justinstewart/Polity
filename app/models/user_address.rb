class UserAddress < ActiveRecord::Base
  belongs_to :ward
  has_many :users
end
