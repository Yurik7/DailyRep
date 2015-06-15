module Result
  class VarResult
    attr_reader :current, :start_point, :type, :time

    def initialize(current,
                  start_point,
                  notification_limit,
                  parent_id,
                  user_id,
                  time = Time.now)
      @current = current
      @start_point = start_point
      @notification_limit = notification_limit
      @parent_id = parent_id
      @time = time
      @user_id = user_id
    end

    def notification_triggered?
      @current_delta ||= (((current - start_point) * 100) / start_point)
                         .round(2)
      @notification_limit < @current_delta
    end

    def save
      raise 'Is already saved' if @is_saved
      @is_saved = true
      ::Model::History::VarHistory.create(to_json)
    end

    private

    def to_json
      {
        user_id: @user_id,
        parent_id: @parent_id,
        current: current,
        start_point: @start_point,
        notification_limit: @notification_limit,
        operation_time: @time
      }.to_json
    end
  end
end
