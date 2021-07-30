require 'rails_helper'

RSpec.describe 'Poetry API service', :vcr do
  it 'returns list' do
    res = PoetryApi.get_poems_by_author('Emily')
    expect(res.status).to eq(200)
  end
end