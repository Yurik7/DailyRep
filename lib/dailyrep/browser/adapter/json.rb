module Browser
  module Adapter
    class Json  < AbstractAdapter
      def get
        respond = ::Net::HTTP.get(URI(@source))
        JSON.parse(respond)
      end
    end
  end
end
