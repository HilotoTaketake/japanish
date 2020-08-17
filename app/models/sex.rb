class Sex < ActiveHash::Base

  self.data = [
    {id: 1, name: 'male'}, {id: 2, name: 'female'}
  ]

  include ActiveHash::Associations
  has_many :japaneses
  has_many :englishes

end

