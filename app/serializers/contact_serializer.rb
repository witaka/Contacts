class ContactSerializer < ActiveModel::Serializer
  has_many :phones

  attributes(
    :first_name,
    :last_name,
    :email,
    :created_at,
    :address_line_1,
    :province,
    :country_name,
    :postcode,
    :how_did_you_hear_about_us,
    :what_is_your_budget,
    :what_is_your_favourite_color
  )

end

class PhonrSerializer < ActiveModel::Serializer
  
  attributes :number, :title
  
end
