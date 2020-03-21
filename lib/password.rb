class Password

  def initialize
    @password = ''
  end

  def access_password
    @password
  end

  def set_password(password)
    @password = password
  end

  def length_validator
    raise 'Password must be between 8 and 18 characters' if @password.length <= 7 || @password.length >=19
  end
end