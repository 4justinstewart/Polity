class Legislation < ActiveRecord::Base
  has_many :legislation_voices
  has_many :legislation_votes
end
