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
end