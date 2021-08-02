require 'rails_helper'

RSpec.describe 'search', :vcr do
  it 'show a list of poems' do
    
    get '/search?author=Emily Dickinson'
    expect(page). to_have_content 'Emily'
  end
end