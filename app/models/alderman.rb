class Alderman < ActiveRecord::Base
  belongs_to :ward
  belongs_to :user
end
