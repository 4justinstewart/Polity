module UsersHelper
  def alderman
    address = UserAddress.find(self.user_address_id)
    legislator = Legislator.find_by_represented_ward_id(address.ward_id)
    User.find(legislator.id)
  end
end
