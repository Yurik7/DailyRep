module Model
  module Entity
    class EntityConfig
      include Mongoid::Document
      include Mongoid::Timestamps

      embedded_in :entity, class_name: GenericEntity.to_s

      field :keep_history, type: Boolean
      field :push_notify, type: Boolean, default: false
      field :mail_notify, type: Boolean, default: false
    end
  end
end
