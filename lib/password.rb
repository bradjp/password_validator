class Password
  def initialize
    @password = ''
  end

  def access_password
    @password
  end
  
  def create_password(password)
    @password = password
    length_validator
    character_validator
  end
  
  private

  def length_validator
    if length_invalid?
      @password == ''
      raise 'Password must be between 8 and 18 characters'
    end  
  end

  def character_validator
    unless characters_valid?
      @password == ''
      raise characters_invalid_notification
    end
  end

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
