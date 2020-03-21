# frozen_string_literal: true

require 'user'

describe User do
  it 'has a username' do
    user = User.new('Neo', 'Thomas Anderson')
    expect(user.username).to eq('Neo')
  end
  it 'has a name' do
    user = User.new('Neo', 'Thomas Anderson')
    expect(user.name).to eq('Thomas Anderson')
  end
  it 'has an empty password' do
    user = User.new('Neo', 'Thomas Anderson')
    expect(user.view_password).to eq('')
  end
end
