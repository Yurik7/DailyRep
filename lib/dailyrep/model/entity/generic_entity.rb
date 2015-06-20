module Model
  module Entity
    class GenericEntity
      include Mongoid::Document
      include Mongoid::Timestamps
      belongs_to :template, class_name: ::Model::NotificationTemplate.to_s
      belongs_to :user, class_name: ::Model::User.to_s
      embeds_one :config, class_name: EntityConfig.to_s

      field :source
      field :enabled, type: Boolean
      field :time_range, type: Range
      field :status
      field :entity_type

      def process
        raise NotImplementedError
      end

      def process_type
        raise NotImplementedError
      end

      def prepare_message(result)
        raise NotImplementedError
      end

    end
  end
end
