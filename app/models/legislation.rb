class Legislation < ActiveRecord::Base
  has_many :legislation_voices
  has_many :legislation_votes

  def voices_by_ward(ward_id)
    ward = Ward.find(ward_id)
    potential_supporters = ward.citizens.pluck(:id)
    LegislationVoice.where(user_id: potential_supporters, legislation_id: self.id)
  end

  def ward_legislation_voices(ward_id)
    voices_by_ward(ward_id).length
  end

  def ward_legislation_support(ward_id)
    support = voices_by_ward(ward_id).each_with_object([]) do |voice, supporters|
      supporters << voice if voice.support == true
    end
    support.length
  end


end
