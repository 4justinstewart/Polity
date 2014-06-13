class LegislationSponsor < ActiveRecord::Base
  belongs_to :legislation
  belongs_to :legislator, class_name: 'User'
end
