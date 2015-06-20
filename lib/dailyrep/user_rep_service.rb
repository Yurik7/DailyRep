class UserRepService
    attr_reader :user

    def initialize(user)
      @user = user
    end

    def report
      user.entities.each do |entity|
        process_entity(entity)
      end
    end

    def process_entity(entity)
      # binding.pry
      EntityRepService.new(entity, push_service).report
    end

    private
    def push_service
      @push_service ||= PushbulletService.new(user.pushbullet.token)
    end
end
