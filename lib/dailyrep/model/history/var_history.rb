module Model
  module History
    class VarHistory
      include Mongoid::Document

      field :token
    end
  end
end
