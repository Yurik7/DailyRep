#!/home/yurii/.rvm/bin/rvm-auto-ruby

require_relative '../config/application.rb'

app = App.new
app.init
# binding.pry