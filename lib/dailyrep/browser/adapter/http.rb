module Browser
  module Adapter
    class Http < AbstractAdapter
      def get
        Nokogiri::HTML(open(@source))
      end
    end
  end
end
