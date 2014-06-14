class CommunitySupport < ActiveRecord::Base
  belongs_to :user
  belongs_to :legislation
  has_many :legislators, through: :users, source: :alderman_id
end
