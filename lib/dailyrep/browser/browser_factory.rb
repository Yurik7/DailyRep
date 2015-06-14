module Browser
  class BrowserFactory
    def self.for entity
      if entity.is_a? ::Entity::VarEntity
        new VarBrowserService(entity)
      elsif entity.is_a? ::Entity::EventEntity
        new EventBrowserService(entity)
      else
        fail 'Unknown entity type!'
      end
    end
  end
end
