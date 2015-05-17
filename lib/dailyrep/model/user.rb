module Model
  class User
    include Mongoid::Document
    has_many :app_cofigurations
    has_many :entities

    field :full_name
    field :password
    field :token

  end
end
