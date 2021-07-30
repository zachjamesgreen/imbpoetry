require 'rails_helper'

RSpec.describe ToneName do
  it 'returns tone names for input' do
    info = {'document_tone' => {
      'tones' => [
        {
          'score' => 0.9,
          'tone_id' => 'analytical',
          'tone_name' => 'Analytical'
        }
      ]
    }}

    name = ToneName.names(info)
    expect(name).to be_a(Array)
    expect(name.first).to eq('Analytical')
  end
end