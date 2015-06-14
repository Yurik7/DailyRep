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
      return false unless check_time_frame
      true
    end

    def check_time_frame
      time_frame_array = @entity.time_frame.split('..')
      (time_frame_array[0]..time_frame_array[1]).include?(Time.now.hour)
    end
  end
end
