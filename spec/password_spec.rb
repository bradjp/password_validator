require 'password'

describe Password do
  subject(:double) { described_class.new }

  character_check = 'Password must contain 1 of each: special, lower & upper case character, as well as a number'

  it 'initializes as an empty string' do
    expect(subject.access_password).to eq('')
  end
  describe '#create_password' do
    it 'sets the password' do
      subject.create_password('Testing1.')
      expect(subject.access_password).to eq('Testing1.')
    end
  end
  describe '#length_validator' do
    it 'checks the length is at least 8 characters' do
      subject.create_password('Testi1.')
      expect { subject.length_validator }.to raise_error(RuntimeError, 'Password must be between 8 and 18 characters')
    end
    it 'checks the length is at most 18 characters' do
      subject.create_password('Testingtestingtesting1.')
      expect { subject.length_validator }.to raise_error(RuntimeError, 'Password must be between 8 and 18 characters')
    end
  end
  describe '#character_validator' do
    it 'checks the password contains a lowercase character' do
      subject.create_password('TESTING1.')
      expect { subject.character_validator }.to raise_error(RuntimeError, character_check)
    end
    it 'checks the password contains an uppercase character' do
      subject.create_password('testing1.')
      expect { subject.character_validator }.to raise_error(RuntimeError, character_check)
    end
    it 'checks the password contains a number' do
      subject.create_password('Testingt.')
      expect { subject.character_validator }.to raise_error(RuntimeError, character_check)
    end
    it 'checks the password contains a special character' do
      subject.create_password('Testingt1')
      expect { subject.character_validator }.to raise_error(RuntimeError, character_check)
    end
  end
end
