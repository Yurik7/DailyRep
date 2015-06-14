class User
  include Mongoid::Document
  has_many :configurations
  has_many :pushbullets

  field :full_name
  field :email

end
