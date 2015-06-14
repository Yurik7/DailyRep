module Entity
  class GenericEntity
    include Mongoid::Document
    belongs_to :user, class_name: User

    field :source
    field :enabled, type: Boolean
    field :time_range, type: Range

    def process
      raise NotImplementedError
    end

  end
end
