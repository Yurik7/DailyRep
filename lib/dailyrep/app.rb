class App
  def init
    user = ::Model::User.last
    # # binding.pry
    UserRepService.new(user).report
  end
end