require 'pp'
require_relative 'user'

user = User.new 'nikitha@example.com','Nikitha'

pp user
user.save