class Ward < ActiveRecord::Base
  belongs_to :alderman, class_name: 'User' #maybe representative? #might this be a "has_one" relaionthip and not a normal belongs to?
end
