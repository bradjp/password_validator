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
    raise 'Password must be between 8 and 18 characters' if length_invalid?
  end

  def character_validator
    unless @password =~ /([a-z])/ && @password =~ /([A-Z])/ && @password =~ /([0-9])/ && @password =~ /([^0-9a-zA-Z ])/
      raise 'Password must contain 1 of each: special, lower & upper case character, as well as a number'
    end
  end

  private

  def length_invalid?
    @password.length <= 7 || @password.length >= 19
  end
end
