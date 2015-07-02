class PushbulletService

  def initialize(token)
    @token = token
  end

  def notify(params)
    Resque.enqueue(PushClientWorker, @token, params)
  end
end
