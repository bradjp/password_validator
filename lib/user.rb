class User

  attr_reader :username, :name

  def initialize(username, name)
    @username = username
    @name = name
  end
end