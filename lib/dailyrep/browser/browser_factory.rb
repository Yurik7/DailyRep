module Browser
  class BrowserFactory
    def self.for entity
      if entity.is_a? ::Model::Entity::VarEntity
        VarBrowserService.new(entity)
      elsif entity.is_a? ::Model::Entity::EventEntity
        EventBrowserService.new(entity)
      else
        fail 'Unknown entity type!'
      end
    end
  end
end
