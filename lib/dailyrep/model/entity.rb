module Model
  class Entity
    include Mongoid::Document
    belongs_to :user

    field :name
    field :source
    field :enabled, type: Boolean
    field :time_range, type: Range
    field :delta_value, type: Float
    field :search_string, type: Array
    field :filters

  end
end
