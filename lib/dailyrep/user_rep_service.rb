class UserRepService
    attr_reader :user

    def initialize(user)
      @user = user
      @config = user.user_config
    end

    def report
      user.entities.each do |entity|
        process_entity(entity)
      end
    end

    def process_entity(entity)
      # # binding.pry
      EntityRepService.new(entity, push_service, mailer_service).report
    end

    private

    def push_service
    binding.pry
      return nil unless @config.push_notify
      @push_service ||= PushbulletService.new(user.pushbullet.token)
    end

    def mailer_service
      return nil unless @config.mail_notify
      @mailer_service ||= MailerService.new(user.email)
    end
end
