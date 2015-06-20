module Model
  module History
    class VarRecord
      include Mongoid::Document
      include Mongoid::Timestamps
      embedded_in :entity, class_name: ::Model::Entity::VarEntity.to_s

      field :current, type: Float
      field :previous, type: Float

    end
  end
end
