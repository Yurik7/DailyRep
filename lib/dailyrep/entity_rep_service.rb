class EntityRepService
  attr_reader :entity

  def initialize(entity, push_service)
    @entity = entity
    @push_service = push_service
  end

  def report
    raise 'no configs for entity' unless config # TODO: custome
    result.save if config.keep_history
    notify if config.notify
  end

  private

  def config
    @config ||= entity.config
  end

  def message
    @message ||= entity.prepare_message(result)
  end

  def result
    @result ||= Browser::BrowserFactory.for(entity).process
  end

  def notify
    # binding.pry
    @push_service.notify(message)
  end

end
