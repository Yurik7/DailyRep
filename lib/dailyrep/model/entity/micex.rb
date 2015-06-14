module Entity
  class Micex
    include Mongoid::Document
    belongs_to :user, class_name: User

    field :source
    field :enabled, type: Boolean
    field :time_range, type: Range
    field :delta_value, type: Float

  end
end
