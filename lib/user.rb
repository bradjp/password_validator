require_relative 'password'

class User

  attr_reader :username, :name

  def initialize(username, name, password=Password.new)
    @username = username
    @name = name
    @password = password
  end

  def view_password
    @password.access_password    
  end
end