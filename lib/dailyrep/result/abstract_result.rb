module Result
  class AbstractResult
    attr_reader :source_entity

    def initialize(entity)
      @source_entity = entity
    end

  end
end
