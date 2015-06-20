module Browser
  class VarBrowserService < AbstractBrowserService

    def process
      adapter = Adapter::const_get(@entity.process_type).new(@entity.source)
      result = @entity.process(adapter.get)
    end

  end
end
