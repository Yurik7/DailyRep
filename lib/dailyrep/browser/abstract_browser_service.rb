module Browser
  class AbstractBrowserService
    def initialize(entity)
      @entity = entity
    end

    def process
      return unless ready_for_processing
    end

    private

    def ready_for_processing
      return false unless @entity.enabled?
      return false unless @entity.time_frame.include?(Time.now.hour)
      true
    end

  end
end
