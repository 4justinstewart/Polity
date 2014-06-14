class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :user_address
  has_many :community_supports
  has_many :legislators
  has_many :legislation_sponsorships, through: :legislators, source: :sponsor_id
  has_many :legislator_votes, through: :legislators

end
