require 'rack/test'
require 'rspec'
require_relative '../app'

set :environment, :test

describe 'Server Service' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should load the home page' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to include('Time')
  end

  it 'should not load the home page' do
    get '/home'
    expect(last_response).to_not be_ok
  end

  it 'should load the time page' do
    get '/time'
    expect(last_response).to be_ok
    expect(last_response.body).to include('UTC')
  end
end
