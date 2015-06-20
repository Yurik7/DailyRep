module Model
  class User
    include Mongoid::Document
    embeds_one :configuration
    embeds_one :pushbullet
    has_many :entities, class_name: ::Model::Entity::GenericEntity.to_s

    field :full_name
    field :email
  end
end
