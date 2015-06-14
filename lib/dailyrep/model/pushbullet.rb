class Pushbullet
  include Mongoid::Document
  belongs_to :user

  field :token

end
