class Legislator < ActiveRecord::Base
  belongs_to :ward, foreign_key: :represented_ward_id
  belongs_to :user, foreign_key: :alderman_id
  has_many :legislation_sponsors
  has_many :legislator_votes
end
