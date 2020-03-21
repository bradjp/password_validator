require 'password'

describe Password do

  subject(:double) { described_class.new }

  it 'initializes as an empty string' do
    expect(subject.access_password).to eq('')
  end
  describe '#set_password' do
    it 'sets the password' do
      subject.set_password('Testing1.')
      expect(subject.access_password).to eq('Testing1.')
    end
  end
  describe '#length_validator' do
    it 'checks the length is at least 8 characters' do
      subject.set_password('Testi1.')
      expect { subject.length_validator }.to raise_error(RuntimeError, 'Password must be between 8 and 18 characters')
    end
    it 'checks the length is at most 18 characters' do
      subject.set_password('Testingtestingtesting1.')
      expect { subject.length_validator }.to raise_error(RuntimeError, 'Password must be between 8 and 18 characters')
    end
  end
  describe '#character_validator' do
    it 'checks the password contains a lowercase character' do
      subject.set_password('TESTING1.')
      expect { subject.character_validator }.to raise_error(RuntimeError, 'Password must contain a lowercase character')
    end
  end
end