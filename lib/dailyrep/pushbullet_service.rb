class PushbulletService

  def initialize(token)
    @token = token
  end

  def notify(params)
    binding.pry
    Resque.enqueue(PushClientWorker, @token, params)
  end
end
