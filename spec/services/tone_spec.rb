require 'rails_helper'

RSpec.describe Tone, :vcr do
  it 'returns 200 and data' do
    res = Tone.analyze('This is a test')
    expect(res.status).to eq(200)
    body = JSON.parse(res.body)
    expect(body).to have_key('document_tone')
    expect(body['document_tone']).to have_key('tones')
  end
end