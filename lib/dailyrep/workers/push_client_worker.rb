class PushClientWorker
  @queue = :pushbullets

  def self.perform(token, params)
    uri = URI.parse('https://api.pushbullet.com')
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Post.new('/v2/pushes')
    request.add_field('Content-Type', 'application/json')
    request.add_field('Authorization', "Bearer #{token}")
    request.body = params.merge(type: 'note').to_json
    http.request(request)
  end
end