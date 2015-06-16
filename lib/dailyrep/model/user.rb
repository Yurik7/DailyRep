module Model
  class User
    include Mongoid::Document
    embeds_one :configuration
    has_many :pushbullets

    field :full_name
    field :email
  end
end
