class PushbulletService

  def initialize(token)
    @client = Washbullet::Client.new(token)
  end

  def notify(params)
    @client.push_note(
      receiver:   :device,
      params: params)
  end
end
