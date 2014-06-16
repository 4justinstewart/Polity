module UsersHelper

  def ward_number
    address = UserAddress.find(self.user_address_id)
    Ward.find_by_id(address.ward_id).ward_number
  end

  # A USER OBJECT => BUT A PERSON THAT IS AN ALDERMAN (LEGISLATOR tBLE HAS at least one row associated)
  def alderman
    address = UserAddress.find(self.user_address_id)
    current_legislator = Legislator.where(:represented_ward_id => address.ward_id).limit(1) #TODO: REMOVE THIS LIMIT CONSTRAINT THIS LATER WhEN DATE LOGIC IS USEFUL FOR SCOPING CURRENT LEGISLATOR
    User.where(current_legislator.alderman_id)
  end


  def street_address1
    address = UserAddress.find(self.user_addres_id)
    address.address1
  end

  def street_address2
    address = UserAddress.find(self.user_addres_id)
    address.address2
  end

  def zip
    address = UserAddress.find(self.user_addres_id)
    address.zip
  end

end

