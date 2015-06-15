module Browser
  module Adapter
    class AbstractAdapter
      def initialize(source)
        @source = source
      end

      def get
        raise NotImplementedError
      end
    end
  end
end
