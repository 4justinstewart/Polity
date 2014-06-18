class Legislation < ActiveRecord::Base
  has_many :legislation_voices
  has_many :legislation_votes

  def supporters_by_ward(ward_id)
    ward = Ward.find(ward_id)
    potential_supporters = ward.citizens.pluck(:id)
    LegislationVoice.where(user_id: potential_supporters, legislation_id: self.id)
  end

end



