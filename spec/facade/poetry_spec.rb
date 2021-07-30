require 'rails_helper'

RSpec.describe Poetry, :vcr do
  it 'has correct attributes' do
    poems = Poetry.get_poems_by_author('Emily')
    poem = poems.first
    expect(poem).to respond_to(:title)
    expect(poem).to respond_to(:author)
    expect(poem).to respond_to(:lines)
    expect(poem.lines).to be_a(String)
  end
end