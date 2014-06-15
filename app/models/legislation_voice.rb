# == Schema Information
#
# Table name: legislation_voices
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  legislation_id :integer
#  support        :boolean
#  feedback       :text
#  created_at     :datetime
#  updated_at     :datetime
#
# Indexes
#
#  index_legislation_voices_on_legislation_id  (legislation_id)
#  index_legislation_voices_on_user_id         (user_id)
#

class LegislationVoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :legislation
end
