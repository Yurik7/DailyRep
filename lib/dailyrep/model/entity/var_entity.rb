module Model
  module Entity
    class VarEntity < GenericEntity
      embeds_many :records, class_name: ::Model::History::VarRecord.to_s
      field :delta_value, type: Float
    end
  end
end
