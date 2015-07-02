class App
  def init
    user = ::Model::User.last
    UserRepService.new(user).report
  end
end
