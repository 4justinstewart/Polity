class Legislation < ActiveRecord::Base
  has_many :legislator_votes

end
