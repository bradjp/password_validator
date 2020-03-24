class Password
  def initialize
    @password = ''
  end

  def access_password
    @password
  end

  def create_password(password)
    @password = password
  end

  def length_validator
    raise 'Password must be between 8 and 18 characters' if length_invalid?
  end

  def character_validator
    raise characters_invalid_notification unless characters_valid?
  end

  private

  def characters_valid?
    @password =~ /([a-z])/ && @password =~ /([A-Z])/ && @password =~ /([0-9])/ && @password =~ /([^0-9a-zA-Z ])/
  end

  def characters_invalid_notification
    'Password must contain 1 of each: special, lower & upper case character, as well as a number'
  end

  def length_invalid?
    @password.length <= 7 || @password.length >= 19
  end
end
