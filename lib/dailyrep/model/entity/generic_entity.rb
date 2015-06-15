module Model
  module Entity
    class GenericEntity
      include Mongoid::Document
      belongs_to :user, class_name: ::Model::User.to_s

      field :source
      field :enabled, type: Boolean
      field :time_range, type: Range

      def process
        raise NotImplementedError
      end

      def process_type
        raise NotImplementedError
      end

    end
  end
end
