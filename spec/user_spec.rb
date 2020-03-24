# frozen_string_literal: true

require 'user'

describe User do

  subject(:double) { described_class.new('Neo', 'Thomas Anderson') }

  it 'has a username' do
    expect(subject.username).to eq('Neo')
  end
  it 'has a name' do
    expect(subject.name).to eq('Thomas Anderson')
  end
  describe '#view_password' do
    it 'has an empty password' do
      expect(subject.view_password).to eq('')
    end
  end
  describe '#choose_password' do
    it 'allows a password to be set' do
      subject.choose_password('Testing1.')
      expect(subject.view_password).to eq('Testing1.')
    end
  end
end
