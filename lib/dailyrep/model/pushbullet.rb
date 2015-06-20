module Model
  class Pushbullet
    include Mongoid::Document
    embedded_in :user

    field :token
  end
end
