class EntityRepService
  attr_reader :entity

  def initialize(entity, push_service, mailer_service)
    @entity = entity
    @push_service = push_service
    @mailer_service = mailer_service
  end

  def report
    raise 'no configs for entity' unless config # TODO: custom
    result.save if config.keep_history
    notify
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
    # # binding.pry
    @push_service.notify(message) if config.push_notify && @push_service
    @mailer_service.notify(message) if config.mail_notify && @mailer_service
  end

end
