module Result
  class VarResult < ::Result::AbstractResult
    attr_reader :current, :previous

    def initialize(current,
                   previous,
                   source_entity)
      super(source_entity)
      @current = current.to_f
      @previous = previous.to_f
    end

    def notification_triggered?
      @current_delta ||= (((current - previous) * 100) / previous)
                         .round(2)
      source_entity.delta_value < @current_delta
    end

    def save
      raise 'Is already saved' if @is_saved
      @is_saved = true
      ::Model::History::VarRecord.create(
        current: @current,
        previous: @previous,
        entity: @source_entity)
    end
  end
end
